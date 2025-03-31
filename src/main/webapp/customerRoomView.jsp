<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%@ page import="java.util.List" %>
<%@ page import="HotelManagementSystem.DatabaseEntities.Room" %>
<%@ page import="HotelManagementSystem.DatabaseServices.RoomService" %>
<%@ page import="HotelManagementSystem.DatabaseEntities.Hotel" %>
<%@ page import="HotelManagementSystem.DatabaseServices.HotelService" %>
<%@ page import="HotelManagementSystem.DatabaseEntities.HotelChain" %>
<%@ page import="HotelManagementSystem.DatabaseServices.HotelChainService" %>
<%@ page import="java.util.ArrayList" %>

<%
    RoomService roomService = new RoomService();
    HotelService hotelService = new HotelService();
    HotelChainService hotelChainService = new HotelChainService();

    List<Room> rooms = null;
    List<Hotel> hotels = null;
    List<HotelChain> hotelChains = null;
    try {
        rooms = roomService.getRooms();
        hotels = hotelService.getHotels();
        hotelChains = hotelChainService.getHotelChains();
    } catch (Exception e) {
        e.printStackTrace();
    }
%>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <script>
        var allHotels = [
            <% for (Hotel hotel : hotels) { %>
                {
                    hotelID: <%= hotel.getHotelID() %>,
                    chainID: <%= hotel.getHotelChainID() %>,
                    city: "<%= hotel.getCity() %>",
                    address: "<%= hotel.getStreetAddress() %>"
                },
            <% } %>
        ];

        function updateHotelFilter() {
            var chainFilter = document.getElementById("chainFilter");
            var hotelFilter = document.getElementById("hotelFilter");
            var selectedChainId = chainFilter.value;

            // Clear current hotel options except the first "All Hotels" option
            while (hotelFilter.options.length > 1) {
                hotelFilter.remove(1);
            }

            // If "All Chains" is selected, show all hotels
            if (selectedChainId === "") {
                allHotels.forEach(function(hotel) {
                    var option = document.createElement("option");
                    option.value = hotel.hotelID;
                    option.text = hotel.city + " - " + hotel.address;
                    hotelFilter.add(option);
                });
            } else {
                // Only show hotels from the selected chain
                allHotels.forEach(function(hotel) {
                    if (hotel.chainID == selectedChainId) {
                        var option = document.createElement("option");
                        option.value = hotel.hotelID;
                        option.text = hotel.city + " - " + hotel.address;
                        hotelFilter.add(option);
                    }
                });
            }
        }

        function applyFilters() {
            var chainFilter = document.getElementById("chainFilter").value;
            var hotelFilter = document.getElementById("hotelFilter").value;
            var priceFilter = document.getElementById("priceFilter").value;
            var capacityFilter = document.getElementById("capacityFilter").value;
            var viewTypeFilter = document.getElementById("viewTypeFilter").value;
            var extendableFilter = document.getElementById("extendableFilter").value;
            var damagedFilter = document.getElementById("damagedFilter").value;

            // Get all room rows (skip the first two rows which are headers and filter controls)
            var rows = document.querySelectorAll("tbody tr");
            for (var i = 2; i < rows.length; i++) {
                var row = rows[i];
                var showRow = true;

                // Chain filter
                if (chainFilter !== "") {
                    var chainCell = row.cells[0].textContent;
                    var selectedChainName = document.getElementById("chainFilter").options[document.getElementById("chainFilter").selectedIndex].text;
                    if (chainCell !== selectedChainName) {
                        showRow = false;
                    }
                }

                // Hotel filter
                if (hotelFilter !== "" && showRow) {
                    var hotelCell = row.cells[1].textContent;
                    if (hotelCell !== hotelFilter) {
                        showRow = false;
                    }
                }

                // Price filter
                if (priceFilter !== "" && showRow) {
                    var priceCell = parseFloat(row.cells[6].textContent);
                    var priceLimit = parseFloat(priceFilter);
                    if (priceLimit === 10000) {
                        if (priceCell < 500) {
                            showRow = false;
                        }
                    } else if (priceCell >= priceLimit) {
                        showRow = false;
                    }
                }

                // Capacity filter
                if (capacityFilter !== "" && showRow) {
                    var capacityCell = row.cells[7].textContent.toLowerCase();
                    if (capacityCell !== capacityFilter) {
                        showRow = false;
                    }
                }

                // View type filter
                if (viewTypeFilter !== "" && showRow) {
                    var viewTypeCell = row.cells[8].textContent.toLowerCase();
                    if (viewTypeCell !== viewTypeFilter) {
                        showRow = false;
                    }
                }

                // Extendable filter
                if (extendableFilter !== "" && showRow) {
                    var extendableCell = row.cells[9].textContent.toLowerCase();
                    var extendableValue = extendableFilter === "true" ? "yes" : "no";
                    if (extendableCell !== extendableValue) {
                        showRow = false;
                    }
                }

                // Damaged filter
                if (damagedFilter !== "" && showRow) {
                    var damagedCell = row.cells[10].textContent.toLowerCase();
                    var damagedValue = damagedFilter === "false" ? "no" : "yes";
                    if (damagedCell !== damagedValue) {
                        showRow = false;
                    }
                }

                // Show/hide row based on filters
                row.style.display = showRow ? "" : "none";
            }
        }
    </script>
</head>


<body>
    <h2>Customer View</h2>
    <% if (rooms == null || rooms.size() == 0) { %>
        <h4>No Hotel Rooms Found</h4>
    <%} else {%>

        <table>
            <thead>
                <tr>
                    <th>Chain Name</th>
                    <th>Hotel</th>
                    <th>Address</th>
                    <th>City</th>
                    <th>Country</th>
                    <th>Room Number</th>
                    <th>Price</th>
                    <th>Capacity</th>
                    <th>ViewType</th>
                    <th>Extendable</th>
                    <th>Damaged</th>
                </tr>
            </thead>

            <tbody>
                <tr class="filter-row">
                    <td>
                        <select id="chainFilter">
                            <option value="">All Chains</option>
                            <% for (HotelChain chain : hotelChains) { %>
                                <option value="<%= chain.getChainID() %>"><%= chain.getName() %></option>
                            <% } %>
                        </select>
                    </td>

                    <td>
                        <select id="hotelFilter">
                            <option value="">All Hotels</option>
                            <% for (Hotel hotel : hotels) { %>
                                <option value="<%= hotel.getHotelID() %>"><%= hotel.getCity() %> - <%= hotel.getStreetAddress() %></option>
                            <% } %>
                        </select>
                    </td>

                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>

                    <td>
                        <select id="priceFilter">
                            <option value="">Any Price</option>
                            <option value="299"><$300</option>
                            <option value="399"><$400</option>
                            <option value="499"><$500</option>
                            <option value="10000">$500+</option>
                        </select>
                    </td>

                    <td>
                        <select id="capacityFilter">
                            <option value="">Any Capacity</option>
                            <option value="single">single</option>
                            <option value="double">double</option>
                            <option value="suite">suite</option>
                            <option value="family">family</option>
                        </select>
                    </td>

                    <td>
                        <select id="viewTypeFilter">
                            <option value="">Any View</option>
                            <option value="city">City</option>
                            <option value="mountain">Mountain</option>
                            <option value="ocean">Ocean</option>
                            <option value="sea">Sea</option>
                        </select>
                    </td>

                    <td>
                        <select id="extendableFilter">
                            <option value="">Any</option>
                            <option value="true">Yes</option>
                            <option value="false">No</option>
                        </select>
                    </td>

                    <td>
                        <select id="damagedFilter">
                            <option value="">Any</option>
                            <option value="false">No Damage</option>
                        </select>
                    </td>
                </tr>

                <tr>
                    <td colspan="11" style="text-align: center;">
                        <button class="filter-button" onclick="applyFilters()">Apply Filters</button>
                    </td>
                </tr>

                <% for (Room room: rooms) {
                    // find the hotel that this room belongs to
                    Hotel roomHotel = null;
                    for (Hotel hotel : hotels) {
                        if (hotel.getHotelID() == room.getHotelID()) {
                            roomHotel = hotel;
                            break;
                        }
                    }
                    // find the chain that the hotel belongs to
                    HotelChain hotelChain = null;
                    if (roomHotel != null) {
                        for (HotelChain chain : hotelChains) {
                            if (chain.getChainID() == roomHotel.getHotelChainID()) {
                                hotelChain = chain;
                                break;
                            }
                        }
                    }
                %>
                    <tr>
                        <td><%= hotelChain != null ? hotelChain.getName() : "N/A" %></td>
                        <td><%= roomHotel != null ? roomHotel.getHotelID() : "N/A" %></td>
                        <td><%= roomHotel != null ? roomHotel.getStreetAddress() : "N/A" %></td>
                        <td><%= roomHotel != null ? roomHotel.getCity() : "N/A" %></td>
                        <td><%= roomHotel != null ? roomHotel.getCountry() : "N/A" %></td>
                        <td><%= room.getRoomNum() %></td>
                        <td><%= room.getPrice() %></td>
                        <td><%= room.getCapacity() %></td>
                        <td><%= room.getViewType() %></td>
                        <td><%= room.isExtendable() ? "Yes" : "No" %></td>
                        <td><%= room.isDamaged() ? "Yes" : "No" %></td>
                    </tr>
                <% } %>

            </tbody>

        </table>
    <% } %>

</body>

</html>
