<%-- 
    Document   : index
    Created on : May 26, 2024, 9:18:04 PM
    Author     : datla
--%>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html lang="en">

<head>
    <!-- Title -->
    <title>Manage Cinema</title>
    <!-- Meta -->
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">

    <!-- Mobile Specific -->
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- Favicon icon -->

    <link rel="icon" type="image/png" sizes="16x16"
          href="${pageContext.request.contextPath}/public/assets/images/favicon.png">
    <link href="${pageContext.request.contextPath}/public/assets/vendor/chartist/css/chartist.min.css" rel="stylesheet"
          type="text/css"/>
    <link href="${pageContext.request.contextPath}/public/assets/vendor/bootstrap-datepicker-master/css/bootstrap-datepicker.min.css"
          rel="stylesheet"
          type="text/css"/>
    <link href="${pageContext.request.contextPath}/public/assets/vendor/bootstrap-select/css/bootstrap-select.min.css"
          rel="stylesheet"
          type="text/css"/>
    <link href="${pageContext.request.contextPath}/public/assets/vendor/bootstrap-datepicker-master/css/bootstrap-datepicker.min.css"
          rel="stylesheet"
          type="text/css"/>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css"
          integrity="sha512-SnH5WK+bZxgPHs44uWIX+LLJAJ9/2PkPKZ5QiAj6Ta86w+fsb2TkcmfRyVX3pBnMFcV7oQPJkl9QevSCWr3W6A=="
          crossorigin="anonymous" referrerpolicy="no-referrer"/>
    <link class="main-css" href="${pageContext.request.contextPath}/public/assets/css/style.css" rel="stylesheet"
          type="text/css"/>

    <style>
        <%@ include file="managerStyle.css"%>
    </style>
</head>

<body>

<!--*******************
    Preloader start
********************-->
<div id="preloader">
    <div class="loader">
        <div class="loader--dot"></div>
        <div class="loader--dot"></div>
        <div class="loader--dot"></div>
        <div class="loader--dot"></div>
        <div class="loader--dot"></div>
        <div class="loader--dot"></div>
        <div class="loader--text"></div>
    </div>
</div>
<!--*******************
    Preloader end
********************-->

<!--**********************************
    Main wrapper start
***********************************-->
<div id="main-wrapper">
    <!--**********************************
Nav header start
***********************************-->
    <%@include file="header.jsp" %>
    <!--**********************************
    Header end
***********************************-->
    <!--**********************************
Sidebar start
***********************************-->
    <%@include file="sidebar.jsp" %>
    <!--**********************************
Sidebar end
***********************************-->
    <!--**********************************
    Content body start
***********************************-->
    <div class=" content-body default-height">
        <!-- row -->
        <div class="container-fluid">
            <div class="form-head mb-4 d-flex flex-wrap align-items-center">
                <div class="me-auto">
                    <h2 class="font-w600 mb-0">Dashboard</h2>
                    <p>Lorem ipsum dolor sit amet </p>
                </div>

                <div class="dropdown custom-dropdown mb-2 period-btn">
                    <div class="btn btn-sm  d-flex align-items-center" data-bs-toggle="dropdown"
                         aria-expanded="false" role="button">
                        <svg class="primary-icon" width="28" height="28" viewBox="0 0 28 28" fill="none"
                             xmlns="http://www.w3.org/2000/svg">
                            <path id="path1"
                                    d="M22.167 5.83362H21.0003V3.50028C21.0003 3.19087 20.8774 2.89412 20.6586 2.67533C20.4398 2.45653 20.143 2.33362 19.8336 2.33362C19.5242 2.33362 19.2275 2.45653 19.0087 2.67533C18.7899 2.89412 18.667 3.19087 18.667 3.50028V5.83362H9.33362V3.50028C9.33362 3.19087 9.2107 2.89412 8.99191 2.67533C8.77312 2.45653 8.47637 2.33362 8.16695 2.33362C7.85753 2.33362 7.56079 2.45653 7.34199 2.67533C7.1232 2.89412 7.00028 3.19087 7.00028 3.50028V5.83362H5.83362C4.90536 5.83362 4.01512 6.20237 3.35874 6.85874C2.70237 7.51512 2.33362 8.40536 2.33362 9.33362V10.5003H25.667V9.33362C25.667 8.40536 25.2982 7.51512 24.6418 6.85874C23.9854 6.20237 23.0952 5.83362 22.167 5.83362Z"
                                    fill="#0E8A74"/>
                            <path
                                    d="M2.33362 22.1669C2.33362 23.0952 2.70237 23.9854 3.35874 24.6418C4.01512 25.2982 4.90536 25.6669 5.83362 25.6669H22.167C23.0952 25.6669 23.9854 25.2982 24.6418 24.6418C25.2982 23.9854 25.667 23.0952 25.667 22.1669V12.8336H2.33362V22.1669Z"
                                    fill="#0E8A74"/>
                        </svg>
                        <div class="text-start ms-3 flex-1">
                            <span class="d-block text-black">Change Periode</span>
                            <small class="d-block text-muted">${sessionScope.year2}</small>
                        </div>
                        <i class="fa fa-caret-down text-light scale5 ms-3"></i>
                    </div>
                    <div class="dropdown-menu dropdown-menu-end">
                        <% int[] years = (int[])session.getAttribute("years");
                            for(int i=0;i<years.length;i++) {
                                if(years[i]!=0){

                                %>

                        <a class="dropdown-item" href="manager?year=<%= years[i]%>"><%= years[i]%>></a>



                        <%
                                }
                            }

                        %>

                    </div>
                </div>
            </div>

            <div class="row">
                <div class="col-xl-12">
                    <div class="row">
                        <div class="col-xl-4 col-xxl-4 col-sm-6 ">
                            <div class="card chart-bx">
                                <div class="card-header border-0 pb-0">
                                    <div class="d-flex align-items-center">
                                        <h2 class="chart-num font-w600 mb-0"><c:choose>
                                            <c:when test="${sessionScope.change1>=0}">
                                                ${sessionScope.change1}
                                            </c:when>
                                            <c:otherwise>
                                                ${sessionScope.change1*(-1)}
                                            </c:otherwise>
                                        </c:choose></h2>
                                        <svg class="ms-2 primary-icon" width="19" height="12" viewBox="0 0 19 12"
                                             fill="none" xmlns="http://www.w3.org/2000/svg">

                                            <c:choose>
                                                <c:when test="${sessionScope.change1>=0}">
                                                    <path id="path2"
                                                          d="M2.00401 11.1924C0.222201 11.1924 -0.670134 9.0381 0.589795 7.77817L7.78218 0.585786C8.56323 -0.195262 9.82956 -0.195262 10.6106 0.585786L17.803 7.77817C19.0629 9.0381 18.1706 11.1924 16.3888 11.1924H2.00401Z"
                                                          fill="#0E8A74"/>
                                                </c:when>
                                                <c:otherwise>
                                                    <path
                                                            d="M2.00401 -4.76837e-06C0.222201 -4.76837e-06 -0.670134 2.15428 0.589795 3.41421L7.78218 10.6066C8.56323 11.3876 9.82956 11.3876 10.6106 10.6066L17.803 3.41421C19.0629 2.15428 18.1706 -4.76837e-06 16.3888 -4.76837e-06H2.00401Z"
                                                            fill="#FF3131"/>
                                                </c:otherwise>
                                            </c:choose>


                                        </svg>
                                    </div>
                                    <div>
                                        <h5 class="text-black font-w500 mb-0">Tickets</h5>
                                    </div>
                                </div>
                                <div class="card-body pt-0 chart-body-wrapper">
                                    <div id="widgetChart1" class="chart-primary"></div>
                                </div>
                            </div>
                        </div>
                        <div class="col-xl-4 col-xxl-4 col-sm-6 ">
                            <div class="card chart-bx">
                                <div class="card-header border-0 pb-0">
                                    <div class="d-flex align-items-center">
                                        <h2 class="chart-num font-w600 mb-0">VND<c:choose>
                                            <c:when test="${sessionScope.change2>=0}">
                                                ${sessionScope.change2}
                                            </c:when>
                                            <c:otherwise>
                                                ${sessionScope.change2*(-1)}
                                            </c:otherwise>
                                        </c:choose>k</h2>
                                        <svg class="ms-2" width="19" height="12" viewBox="0 0 19 12" fill="none"
                                             xmlns="http://www.w3.org/2000/svg">
                                            <c:choose>
                                                <c:when test="${sessionScope.change2>=0}">
                                                    <path id="path2"
                                                          d="M2.00401 11.1924C0.222201 11.1924 -0.670134 9.0381 0.589795 7.77817L7.78218 0.585786C8.56323 -0.195262 9.82956 -0.195262 10.6106 0.585786L17.803 7.77817C19.0629 9.0381 18.1706 11.1924 16.3888 11.1924H2.00401Z"
                                                          fill="#0E8A74"/>
                                                </c:when>
                                                <c:otherwise>
                                                    <path
                                                            d="M2.00401 -4.76837e-06C0.222201 -4.76837e-06 -0.670134 2.15428 0.589795 3.41421L7.78218 10.6066C8.56323 11.3876 9.82956 11.3876 10.6106 10.6066L17.803 3.41421C19.0629 2.15428 18.1706 -4.76837e-06 16.3888 -4.76837e-06H2.00401Z"
                                                            fill="#FF3131"/>
                                                </c:otherwise>
                                            </c:choose>
                                        </svg>
                                    </div>
                                    <div>
                                        <h5 class="text-black font-w500 mb-0">Revenue</h5>
                                    </div>
                                </div>
                                <div class="card-body pt-0 chart-body-wrapper">
                                    <div id="widgetChart2">
                                    </div>
                                </div>
                            </div>
                        </div>


                        <div class="col-xl-4 col-xxl-4 col-sm-6 ">
                            <div class="card chart-bx">
                                <div
                                        class="card-body pt-sm-4 pt-3 d-flex align-items-center justify-content-between">
                                    <div class="me-3">
                                        <div class="d-flex align-items-center">
                                            <h2 class="chart-num font-w600 mb-0">45242</h2>
                                        </div>
                                        <div>
                                            <h5 class="text-black font-w500 mb-3 mt-2">Event Held</h5>
                                        </div>
                                        <div>
                                            <p class="text-primary fs-14 mb-0">
                                                <svg class="me-2 primary-icon" width="19" height="12"
                                                     viewBox="0 0 19 12" fill="none"
                                                     xmlns="http://www.w3.org/2000/svg">
                                                    <path
                                                            d="M2.00401 11.1924C0.222201 11.1924 -0.670134 9.0381 0.589795 7.77817L7.78218 0.585786C8.56323 -0.195262 9.82956 -0.195262 10.6106 0.585786L17.803 7.77817C19.0629 9.0381 18.1706 11.1924 16.3888 11.1924H2.00401Z"
                                                            fill="#0E8A74"/>
                                                </svg>
                                                2.4%
                                                <span class="op-6 text-muted">than Last Week</span>
                                            </p>
                                        </div>
                                    </div>
                                    <div>
                                        <div class="d-inline-block position-relative donut-chart-sale">
                                                    <span class="donut1"
                                                          data-peity='{ "fill": ["var(--primary)", "rgba(240, 240, 240)"],   "innerRadius": 35, "radius": 10}'>66/100</span>
                                            <small class="text-black">66%</small>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-xl-12">
                    <div class="row">


                            <div class="card bg-primary">
                                <div class="card-body">
                                    <div class="d-sm-flex d-block pb-sm-3 align-items-end mb-2">
                                        <div class="me-auto pe-3 mb-3 mb-sm-0">
                                                    <span
                                                            class="chart-num-3 font-w200 d-block mb-sm-3 mb-2 text-white">Ticket
                                                        Sold Today</span>
                                            <h2 class="chart-num-2 text-white mb-0">${sessionScope.tickettoday}<span
                                                    class="fs-18 me-2 ms-3">pcs</span></h2>
                                        </div>

                                    </div>
                                    <div class="progress style-1" style="height:15px;">
                                        <div class="progress-bar bg-white progress-animated"
                                             style="width: ${sessionScope.perf}%; height:15px;" role="progressbar">
                                            <span class="sr-only">${sessionScope.perf}% Complete</span>
                                            <span class="bg-white arrow"></span>
                                            <span class="font-w600 counter-bx text-black"><strong
                                                    class="counter font-w400">${sessionScope.tickettoday2-sessionScope.tickettoday}pcs Left</strong></span>
                                        </div>
                                    </div>
                                    <p class="fs-12 text-white pt-4">Lorem ipsum dolor sit amet, consectetur
                                        adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna
                                        aliqua. Ut enim ad mini</p>

                                </div>
                            </div>

                    </div>
                </div>
                <div class="col-xl-12 col-xxl-12">
                    <div class="row">


                        <div class="col-xl-12 col-xxl-12">
                            <div class="card">
                                <div class="card-header border-0 flex-wrap pb-0">
                                    <h4 class="fs-20 font-w500 card-title">Sales Revenue</h4>
                                    <div class="card-action coin-tabs">
                                        <ul class="nav nav-tabs" role="tablist">
                                            <li class="nav-item">
                                                <a class="nav-link active" data-bs-toggle="tab" href="#Monthly1">
                                                    Monthly
                                                </a>
                                            </li>

                                        </ul>
                                    </div>
                                </div>
                                <div class="card-body pb-2">
                                    <div class="tab-content">
                                        <div class="tab-pane fade active show" id="Monthly1">
                                            <div id="salesChart" class="chart-primary"></div>
                                        </div>
                                        <div class="tab-pane fade" id="Weekly1">
                                            <div id="salesChart1" class="chart-primary"></div>

                                        </div>
                                        <div class="tab-pane fade" id="Daily1">
                                            <div id="salesChart2" class="chart-primary"></div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <button onclick="generateExcel()">Generate Excel Report</button>

                <script src="https://cdnjs.cloudflare.com/ajax/libs/xlsx/0.16.9/xlsx.full.min.js"></script>
                <script>
                  async  function generateExcel() {
                        // Create a workbook
                        var wb = XLSX.utils.book_new();

                      $.ajax({
                          url: 'dataload2', // Đường dẫn đến servlet
                          type: 'GET',
                          success: function (response) {
                              var data = [
                                  response.data
                              ];
                              console.log(data);
                              // Convert data to a worksheet
                              var ws = XLSX.utils.aoa_to_sheet(data);

                              // Append the worksheet to the workbook
                              XLSX.utils.book_append_sheet(wb, ws, "Report");

                              // Generate and download the Excel file
                              XLSX.writeFile(wb, "report.xlsx");

                              // Sample data
                          }
                      });


                    }
                </script>

            </div>
        </div>
    </div>
    <!--**********************************
    Content body end
***********************************-->
    <!--**********************************
Footer start
***********************************-->
    <footer class="footer">
        <div class="copyright">
            <p>Copyright © Designed &amp; Developed by <a href="https://dexignzone.com/"
                                                          target="_blank">MCN</a> 2024</p>
        </div>
    </footer>
    <!--**********************************
Footer end
***********************************-->

</div>

<script src="${pageContext.request.contextPath}/public/assets/vendor/global/global.min.js"></script>
<script src="${pageContext.request.contextPath}/public/assets/vendor/bootstrap-select/js/bootstrap-select.min.js"></script>

<script src="${pageContext.request.contextPath}/public/assets/vendor/chartjs/chart.bundle.min.js"></script>
<script src="${pageContext.request.contextPath}/public/assets/vendor/bootstrap-datetimepicker/js/moment.js"></script>
<script src="${pageContext.request.contextPath}/public/assets/vendor/bootstrap-datetimepicker/js/bootstrap-datetimepicker.min.js"></script>
<script src="${pageContext.request.contextPath}/public/assets/vendor/peity/jquery.peity.min.js"></script>
<script src="${pageContext.request.contextPath}/public/assets/vendor/apexchart/apexchart.js"></script>

<script src="${pageContext.request.contextPath}/public/assets/js/custom.min.js"></script>
<script src="${pageContext.request.contextPath}/public/assets/js/deznav-init.js"></script>
<script src="${pageContext.request.contextPath}/public/assets/js/demo.js"></script>
<script src="${pageContext.request.contextPath}/public/assets/js/styleSwitcher.js"></script>
<script src="https://cdn.jsdelivr.net/npm/chart.js"></script>

<script>
    (function($) {
        /* "use strict" */

        var dzChartlist = function() {
            var screenWidth = $(window).width();
            var widgetChart1 = function() {
                $.ajax({
                    url: 'dataload', // Đường dẫn đến servlet
                    type: 'GET',
                    success: function(response) {
                        var options = {
                            series: [{
                                name: 'Net Profit',
                                data: response.data,
                                //radius: 12,
                            }],
                            chart: {
                                type: 'line',
                                height: 100,
                                toolbar: {
                                    show: true,
                                    offsetX: 0,
                                    offsetY: 0,
                                    tools: {
                                        download: true,
                                        selection: true,
                                        zoom: true,
                                        zoomin: true,
                                        zoomout: true,
                                        pan: true,
                                        reset: true | '<img src="/static/icons/reset.png" width="20">',
                                        customIcons: []
                                    },
                                    export: {
                                        csv: {
                                            filename: undefined,
                                            columnDelimiter: ',',
                                            headerCategory: 'categories',
                                            headerValue: 'value',
                                            categoryFormatter(x) {
                                                return new Date(x).toDateString()
                                            },
                                            valueFormatter(y) {
                                                return y
                                            }
                                        },
                                        svg: {
                                            filename: undefined,
                                        },
                                        png: {
                                            filename: undefined,
                                        }
                                    },
                                    autoSelected: 'zoom'
                                },

                                zoom: {
                                    enabled: false
                                },
                                sparkline: {
                                    enabled: true
                                }
                            },
                            colors: ['var(--primary)'],
                            dataLabels: {
                                enabled: false,
                            },
                            legend: {
                                show: false,
                            },
                            stroke: {
                                show: true,
                                width: 6,
                                curve: 'smooth',
                                colors: ['var(--primary)'],
                            },
                            grid: {
                                show: false,
                                borderColor: '#eee',
                                padding: {
                                    top: 0,
                                    right: 0,
                                    bottom: 0,
                                    left: 0
                                }
                            },
                            states: {
                                normal: {
                                    filter: {
                                        type: 'none',
                                        value: 0
                                    }
                                },
                                hover: {
                                    filter: {
                                        type: 'none',
                                        value: 0
                                    }
                                },
                                active: {
                                    allowMultipleDataPointsSelection: false,
                                    filter: {
                                        type: 'none',
                                        value: 0
                                    }
                                }
                            },
                            xaxis: {
                                categories: ['Jan', 'Feb', 'Mar', 'Apr', 'May', 'Jun', 'Jul', 'Aug', 'Sep', 'Oct', 'Nov', 'Dec'],
                                axisBorder: {
                                    show: false,
                                },
                                axisTicks: {
                                    show: false
                                },
                                labels: {
                                    show: false,
                                    style: {
                                        fontSize: '12px',
                                    }
                                },
                                crosshairs: {
                                    show: false,
                                    position: 'front',
                                    stroke: {
                                        width: 1,
                                        dashArray: 3
                                    }
                                },
                                tooltip: {
                                    enabled: true,
                                    formatter: undefined,
                                    offsetY: 0,
                                    style: {
                                        fontSize: '12px',
                                    }
                                }
                            },
                            yaxis: {
                                show: false,
                            },
                            fill: {
                                opacity: 1,
                                colors: '#FB3E7A'
                            },
                            tooltip: {
                                style: {
                                    fontSize: '12px',
                                },
                                y: {
                                    formatter: function(val) {
                                        return "" + val + " tickets"
                                    }
                                }
                            }
                        };

                        var chartBar1 = new ApexCharts(document.querySelector("#widgetChart1"), options);
                        chartBar1.render();
                    },
                    error: function(error) {
                        console.log("Error fetching data: ", error);
                    }
                });
            };






            var widgetChart2 = function() {
                $.ajax({
                    url: 'dataload2', // Đường dẫn đến servlet
                    type: 'GET',
                    success: function (response) {
                        var options = {
                            series: [{
                                name: 'Net Profit',
                                data: response.data,
                                //radius: 12,
                            }],
                            chart: {
                                type: 'line',
                                height: 100,
                                toolbar: {
                                    show: true,
                                    offsetX: 0,
                                    offsetY: 0,
                                    tools: {
                                        download: true,

                                        selection: true,
                                        zoom: true,
                                        zoomin: true,
                                        zoomout: true,
                                        pan: true,
                                        reset: true | '<img src="/static/icons/reset.png" width="20">',
                                        customIcons: []
                                    },
                                    export: {
                                        csv: {
                                            filename: undefined,
                                            columnDelimiter: ',',
                                            headerCategory: 'categories',
                                            headerValue: 'value',
                                            categoryFormatter(x) {
                                                return new Date(x).toDateString()
                                            },
                                            valueFormatter(y) {
                                                return y
                                            }
                                        },
                                        svg: {
                                            filename: undefined,
                                        },
                                        png: {
                                            filename: undefined,
                                        }
                                    },
                                    autoSelected: 'zoom'
                                },


                            },

                            colors: ['#FB3E7A'],
                            dataLabels: {
                                enabled: false,
                            },

                            legend: {
                                show: false,
                            },
                            stroke: {
                                show: true,
                                width: 6,
                                curve: 'smooth',
                                colors: ['#FB3E7A'],
                            },

                            grid: {
                                show: false,
                                borderColor: '#eee',
                                padding: {
                                    top: 0,
                                    right: 0,
                                    bottom: 0,
                                    left: 0

                                }
                            },
                            states: {
                                normal: {
                                    filter: {
                                        type: 'none',
                                        value: 0
                                    }
                                },
                                hover: {
                                    filter: {
                                        type: 'none',
                                        value: 0
                                    }
                                },
                                active: {
                                    allowMultipleDataPointsSelection: false,
                                    filter: {
                                        type: 'none',
                                        value: 0
                                    }
                                }
                            },
                            xaxis: {
                                categories: ['Jan', 'feb', 'Mar', 'Apr', 'May', 'Jun', 'Aug', 'Sep', 'Oct', 'Nov', 'Dec',],
                                axisBorder: {
                                    show: false,
                                },
                                axisTicks: {
                                    show: false
                                },
                                labels: {
                                    show: false,
                                    style: {
                                        fontSize: '12px',
                                    }
                                },
                                crosshairs: {
                                    show: false,
                                    position: 'front',
                                    stroke: {
                                        width: 1,
                                        dashArray: 3
                                    }
                                },
                                tooltip: {
                                    enabled: true,
                                    formatter: undefined,
                                    offsetY: 0,
                                    style: {
                                        fontSize: '12px',
                                    }
                                }
                            },
                            yaxis: {
                                show: false,
                            },
                            fill: {
                                opacity: 1,
                                colors: '#FAC7B6'
                            },
                            tooltip: {
                                style: {
                                    fontSize: '12px',
                                },
                                y: {
                                    formatter: function (val) {
                                        return "VND" + val + " thousands"
                                    }
                                }
                            }
                        };

                        var chartBar2 = new ApexCharts(document.querySelector("#widgetChart2"), options);
                        chartBar2.render();

                    }
                });
            };
            var chartBar = function() {
                if (jQuery('#widgetChart3').length > 0) {

                    const widgetChart3 = document.getElementById("widgetChart3").getContext('2d');
                    //generate gradient


                    // widgetChart1.attr('height', '100');

                    new Chart(widgetChart3, {
                        type: 'bar',
                        data: {
                            defaultFontFamily: 'Poppins',
                            labels: ["Jan", "Feb", "Mar", "Apr", "May", "Jun", "Jul", "Aug", "Sep", "Oct"],
                            datasets: [{
                                label: "My First dataset",
                                data: [15, 40, 55, 40, 25, 35, 40, 50, 85, 95],
                                borderColor: '#FE634E',
                                borderWidth: "0",
                                backgroundColor: '#FE634E',
                                borderRadius: 20,
                                barPercentage: 0.4,
                                hoverBackgroundColor: '#FE634E'
                            }]
                        },
                        options: {
                            plugins: {
                                legend: false,

                            },
                            responsive: true,
                            barRoundness: 1,
                            maintainAspectRatio: false,
                            scales: {
                                y: {
                                    display: false,
                                    max: 100,
                                    min: 0,
                                    ticks: {
                                        beginAtZero: true,
                                        display: false,
                                        stepSize: 10
                                    },
                                    grid: {
                                        display: false,
                                        drawBorder: false
                                    }
                                },
                                x: {
                                    display: false,
                                    barPercentage: 0.4,
                                    grid: {
                                        display: false,
                                        drawBorder: false
                                    },
                                    ticks: {
                                        display: false
                                    }
                                }
                            }
                        }
                    });

                }


            }
            var donutChart1 = function() {
                $("span.donut1").peity("donut", {
                    width: "90",
                    height: "90"
                });
            }

            var donutChart2 = function() {
                var options = {
                    series: [45, 25, 30],
                    chart: {
                        type: 'donut',
                        height: 230,
                    },
                    legend: {
                        show: false
                    },
                    plotOptions: {
                        pie: {
                            //startAngle: -96,
                            donut: {
                                size: '30%',
                            }
                        },
                    },

                    states: {
                        normal: {
                            filter: {
                                type: 'none',
                                value: 0,
                            }
                        },
                        hover: {
                            filter: {
                                type: 'lighten',
                                value: 0,
                            }
                        },
                        active: {
                            filter: {
                                type: 'lighten',
                                value: 0,
                            }
                        },
                    },

                    stroke: {
                        width: '10'
                    },
                    dataLabels: {
                        formatter(val, opts) {
                            const name = opts.w.globals.labels[opts.seriesIndex]
                            return [val.toFixed() + '%']
                        },
                        dropShadow: {
                            enabled: false
                        },
                        style: {
                            fontSize: '15px',
                            colors: ["#fff"],
                        }
                    },
                    colors: ['#0E8A74', '#FB3E7A', '#C8C8C8'],
                    responsive: [{
                        breakpoint: 1600,
                        options: {
                            chart: {
                                height: 200
                            },
                        }
                    }]
                };

                var chart = new ApexCharts(document.querySelector("#donutChart2"), options);
                chart.render();
            }
            var donutChart3 = function() {
                var options = {
                    series: [45, 25, 30],
                    chart: {
                        type: 'donut',
                        height: 230,
                    },
                    legend: {
                        show: false
                    },
                    plotOptions: {
                        pie: {
                            //startAngle: -86,
                            donut: {
                                size: '30%',
                            }
                        },
                    },

                    states: {
                        normal: {
                            filter: {
                                type: 'none',
                                value: 0,
                            }
                        },
                        hover: {
                            filter: {
                                type: 'lighten',
                                value: 0,
                            }
                        },
                        active: {
                            filter: {
                                type: 'lighten',
                                value: 0,
                            }
                        },
                    },

                    stroke: {
                        width: '10'
                    },
                    dataLabels: {
                        formatter(val, opts) {
                            const name = opts.w.globals.labels[opts.seriesIndex]
                            return [val.toFixed() + '%']
                        },
                        dropShadow: {
                            enabled: false
                        },
                        style: {
                            fontSize: '15px',
                            colors: ["#fff"],
                        }
                    },
                    colors: ['#0E8A74', '#FB3E7A', '#C8C8C8'],
                    responsive: [{
                        breakpoint: 1600,
                        options: {
                            chart: {
                                height: 200
                            },
                        }
                    }]
                };

                var chart = new ApexCharts(document.querySelector("#donutChart3"), options);
                chart.render();
            }
            var donutChart4 = function() {
                var options = {
                    series: [45, 25, 30],
                    chart: {
                        type: 'donut',
                        height: 230,
                    },
                    legend: {
                        show: false
                    },
                    plotOptions: {
                        pie: {
                            //startAngle: -86,
                            donut: {
                                size: '30%',
                            }
                        },
                    },

                    states: {
                        normal: {
                            filter: {
                                type: 'none',
                                value: 0,
                            }
                        },
                        hover: {
                            filter: {
                                type: 'lighten',
                                value: 0,
                            }
                        },
                        active: {
                            filter: {
                                type: 'lighten',
                                value: 0,
                            }
                        },
                    },

                    stroke: {
                        width: '10'
                    },
                    dataLabels: {
                        formatter(val, opts) {
                            const name = opts.w.globals.labels[opts.seriesIndex]
                            return [val.toFixed() + '%']
                        },
                        dropShadow: {
                            enabled: false
                        },
                        style: {
                            fontSize: '15px',
                            colors: ["#fff"],
                        }
                    },
                    colors: ['#0E8A74', '#FB3E7A', '#C8C8C8'],
                    responsive: [{
                        breakpoint: 1600,
                        options: {
                            chart: {
                                height: 200
                            },
                        }
                    }]
                };

                var chart = new ApexCharts(document.querySelector("#donutChart4"), options);
                chart.render();
            }
            var salesChart = function() {
                $.ajax({
                    url: 'dataload2', // Đường dẫn đến servlet
                    type: 'GET',
                    success: function (response) {

                        var options = {
                            series: [{
                                name: 'Net Profit',
                                data: response.data,
                                //radius: 12,
                            }],
                            chart: {
                                type: 'line',
                                height: 380,
                                toolbar: {
                                    show: true,
                                    offsetX: 0,
                                    offsetY: 0,
                                    tools: {
                                        download: true,
                                        selection: true,
                                        zoom: true,
                                        zoomin: true,
                                        zoomout: true,
                                        pan: true,
                                        reset: true | '<img src="/static/icons/reset.png" width="20">',
                                        customIcons: []
                                    },
                                    export: {
                                        csv: {
                                            filename: undefined,
                                            columnDelimiter: ',',
                                            headerCategory: 'categories',
                                            headerValue: 'value',
                                            categoryFormatter(x) {
                                                return new Date(x).toDateString()
                                            },
                                            valueFormatter(y) {
                                                return y
                                            }
                                        },
                                        svg: {
                                            filename: undefined,
                                        },
                                        png: {
                                            filename: undefined,
                                        }
                                    },
                                    autoSelected: 'zoom'
                                },
                            },

                            colors: ['var(--primary)'],
                            dataLabels: {
                                enabled: false,
                            },

                            legend: {
                                show: true,
                            },
                            stroke: {
                                show: true,
                                width: 6,
                                curve: 'smooth',
                                colors: ['var(--primary)'],
                            },

                            grid: {
                                show: true,
                                borderColor: '#C8C8C8',
                                strokeDashArray: 4,
                                padding: {
                                    top: 0,
                                    right: 0,
                                    bottom: 0,
                                    left: 0

                                }
                            },
                            states: {
                                normal: {
                                    filter: {
                                        type: 'none',
                                        value: 0
                                    }
                                },
                                hover: {
                                    filter: {
                                        type: 'none',
                                        value: 0
                                    }
                                },
                                active: {
                                    allowMultipleDataPointsSelection: false,
                                    filter: {
                                        type: 'none',
                                        value: 0
                                    }
                                }
                            },
                            xaxis: {
                                categories: ['Jan', 'Feb', 'Mar', 'Apr', 'May', 'Jun', 'Aug', 'Sep', 'Oct','Nov','Dec'],
                                axisBorder: {
                                    show: true,
                                },
                                axisTicks: {
                                    show: true
                                },
                                labels: {
                                    show: true,
                                    style: {
                                        fontSize: '14px',
                                        colors: '#a4a7ab',
                                    }

                                },
                                crosshairs: {
                                    show: false,
                                    position: 'front',
                                    stroke: {
                                        width: 1,
                                        dashArray: 3
                                    }
                                },
                                tooltip: {
                                    enabled: true,
                                    formatter: undefined,
                                    offsetY: 0,
                                    style: {
                                        fontSize: '12px',
                                    }
                                }
                            },
                            yaxis: {
                                show: true,
                                labels: {
                                    offsetX: -10,
                                    formatter: function (value) {
                                        return value + "k";
                                    },
                                    style: {
                                        colors: '#a4a7ab',
                                        fontSize: '14px',
                                    },
                                },
                            },
                            fill: {
                                opacity: 1,
                                colors: '#FB3E7A'
                            },
                            tooltip: {
                                style: {
                                    fontSize: '12px',
                                },
                                y: {
                                    formatter: function (val) {
                                        return "k" + val + " thousands"
                                    }
                                }
                            },
                            responsive: [{
                                breakpoint: 575,
                                options: {
                                    chart: {
                                        height: 250,
                                    },
                                },
                            }]
                        };

                        var chartBar1 = new ApexCharts(document.querySelector("#salesChart"), options);
                        chartBar1.render();

                    }
                });
            };

            var salesChart1 = function() {
                var options = {
                    series: [{
                        name: 'Net Profit',
                        data: [100, 300, 200, 400, 100, 300, 100, 200, 100],
                        //radius: 12,
                    }, ],
                    chart: {
                        type: 'line',
                        height: 380,
                        toolbar: {
                            show: false,
                        },
                    },

                    colors: ['var(--primary)'],
                    dataLabels: {
                        enabled: false,
                    },

                    legend: {
                        show: true,
                    },
                    stroke: {
                        show: true,
                        width: 6,
                        curve: 'smooth',
                        colors: ['var(--primary)'],
                    },

                    grid: {
                        show: true,
                        borderColor: '#C8C8C8',
                        strokeDashArray: 4,
                        padding: {
                            top: 0,
                            right: 0,
                            bottom: 0,
                            left: 0

                        }
                    },
                    states: {
                        normal: {
                            filter: {
                                type: 'none',
                                value: 0
                            }
                        },
                        hover: {
                            filter: {
                                type: 'none',
                                value: 0
                            }
                        },
                        active: {
                            allowMultipleDataPointsSelection: false,
                            filter: {
                                type: 'none',
                                value: 0
                            }
                        }
                    },
                    xaxis: {
                        categories: ['Jan', 'Feb', 'Mar', 'Apr', 'May', 'Jun', 'Aug', 'Sep', 'Oct','Nov','Dec'],
                        axisBorder: {
                            show: true,
                        },
                        axisTicks: {
                            show: true
                        },
                        labels: {
                            show: true,
                            style: {
                                fontSize: '14px',
                                colors: '#a4a7ab',
                            }
                        },
                        crosshairs: {
                            show: false,
                            position: 'front',
                            stroke: {
                                width: 1,
                                dashArray: 3
                            }
                        },
                        tooltip: {
                            enabled: true,
                            formatter: undefined,
                            offsetY: 0,
                            style: {
                                fontSize: '12px',
                            }
                        }
                    },
                    yaxis: {
                        show: true,
                        labels: {
                            offsetX: -10,
                            formatter: function(value) {
                                return value + "k";
                            },
                            style: {
                                colors: '#a4a7ab',
                                fontSize: '14px',
                            },
                        }
                    },
                    fill: {
                        opacity: 1,
                        colors: '#FB3E7A'
                    },
                    tooltip: {
                        style: {
                            fontSize: '12px',
                        },
                        y: {
                            formatter: function(val) {
                                return "k" + val + " thousands"
                            }
                        }
                    },
                    responsive: [{
                        breakpoint: 575,
                        options: {
                            chart: {
                                height: 250,
                            },
                        },
                    }]
                };

                var chartBar1 = new ApexCharts(document.querySelector("#salesChart1"), options);
                chartBar1.render();

            }
            var salesChart2 = function() {
                var options = {
                    series: [{
                        name: 'Net Profit',
                        data: [200, 300, 400, 200, 300, 100, 300, 200, 100],
                        //radius: 12,
                    }, ],
                    chart: {
                        type: 'line',
                        height: 380,
                        toolbar: {
                            show: false,
                        },
                    },

                    colors: ['var(--primary)'],
                    dataLabels: {
                        enabled: false,
                    },

                    legend: {
                        show: true,
                    },
                    stroke: {
                        show: true,
                        width: 6,
                        curve: 'smooth',
                        colors: ['var(--primary)'],
                    },

                    grid: {
                        show: true,
                        borderColor: '#C8C8C8',
                        strokeDashArray: 4,
                        padding: {
                            top: 0,
                            right: 0,
                            bottom: 0,
                            left: 0

                        }
                    },
                    states: {
                        normal: {
                            filter: {
                                type: 'none',
                                value: 0
                            }
                        },
                        hover: {
                            filter: {
                                type: 'none',
                                value: 0
                            }
                        },
                        active: {
                            allowMultipleDataPointsSelection: false,
                            filter: {
                                type: 'none',
                                value: 0
                            }
                        }
                    },
                    xaxis: {
                        categories: ['Jan', 'Feb', 'Mar', 'Apr', 'May', 'Jun', 'Aug', 'Sep', 'Oct','Nov','Dec'],
                        axisBorder: {
                            show: true,
                        },
                        axisTicks: {
                            show: true
                        },
                        labels: {
                            show: true,
                            style: {
                                fontSize: '14px',
                                colors: '#a4a7ab',
                            }
                        },
                        crosshairs: {
                            show: false,
                            position: 'front',
                            stroke: {
                                width: 1,
                                dashArray: 3
                            }
                        },
                        tooltip: {
                            enabled: true,
                            formatter: undefined,
                            offsetY: 0,
                            style: {
                                fontSize: '12px',
                            }
                        }
                    },
                    yaxis: {
                        show: true,
                        labels: {
                            offsetX: -10,
                            formatter: function(value) {
                                return value + "k";
                            },
                            style: {
                                colors: '#a4a7ab',
                                fontSize: '14px',
                            },
                        }
                    },
                    fill: {
                        opacity: 1,
                        colors: '#FB3E7A'
                    },
                    tooltip: {
                        style: {
                            fontSize: '12px',
                        },
                        y: {
                            formatter: function(val) {
                                return "k" + val + " thousands"
                            }
                        }
                    },
                    responsive: [{
                        breakpoint: 575,
                        options: {
                            chart: {
                                height: 250,
                            },
                        },
                    }]
                };

                var chartBar1 = new ApexCharts(document.querySelector("#salesChart2"), options);
                chartBar1.render();

            }


            /* Function ============ */
            return {
                init: function() {},


                load: function() {
                    widgetChart1();
                    widgetChart2();
                    chartBar();
                    donutChart1();
                    donutChart2();
                    donutChart3();
                    donutChart4();
                    salesChart();
                    salesChart1();
                    salesChart2();

                },

                resize: function() {}
            }

        }();



        jQuery(window).on('load', function() {
            setTimeout(function() {
                dzChartlist.load();
            }, 1000);

        });
        $(document).ready(function() {
            dzChartlist.load();
            $(window).on('resize', function() {
                dzChartlist.resize();
            });
        });


    })(jQuery);
</script>
<!--**********************************
    Main wrapper end
***********************************-->
</body>

</html>
