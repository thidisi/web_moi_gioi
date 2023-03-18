<!doctype html>
<html lang="en" class="pxp-root">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="csrf-token" content="{{ csrf_token() }}">

    <link rel="shortcut icon" href="images/favicon.png" type="image/x-icon">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;500;600;700&display=swap" rel="stylesheet">
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="{{ asset('css/font-awesome.min.css') }}">
    <link rel="stylesheet" href="{{ asset('css/owl.carousel.min.css') }}">
    <link rel="stylesheet" href="{{ asset('css/owl.theme.default.min.css') }}">
    <link rel="stylesheet" href="{{ asset('css/animate.css') }}">
    <link rel="stylesheet" href="{{ asset('css/style.css') }}">

    <title>Jobster - Jobs list v1</title>
    <style>
        body {
            height: 100vh;
            weidth: 100wh;
            color: white;
            text-align: center;
            font-family: sans-serif;
            background: linear-gradient(-45deg, #EE7752, #E73C7E, #23A6D5, #23D5AB);
            background-size: 400% 400%;
            -moz-animation: Gradient 15s ease infinite;
            animation: Gradient 15S ease infinite;
        }

        @keyframes Gradient {
            0% {
                background-position: 0% 50%
            }

            50% {
                background-position: 50% 100%
            }

            100% {
                background-position: 50% 0%
            }
        }

        @-moz-keyframes Gradient {
            0% {
                background-position: 0% 50%
            }

            50% {
                background-position: 100% 50%
            }

            100% {
                background-position: 0% 50%
            }
        }

        .table>:not(caption)>*>* {
            padding: 0.8rem 0.8rem;
            background-color: #ffff;
            box-shadow: none !important;
        }
    </style>
</head>

<body>
    <div class="pxp-preloader"><span>Loading...</span></div>

    <section style="margin-top: 60px">
        <div class="pxp-container">
            <div class="row">
                <h1 class="text-center py-4" id="text-date">123</h1>
            </div>
            <div class="row p-4" style="box-shadow: 0 0px 30px rgb(0 0 0 / 15%); border-radius: 20px;">
                <div class="col-lg-3 col-xl-4 col-xxl-3">
                    <div class="pxp-jobs-list-side-filter" style="margin-top: 30px;">
                        <div class="pxp-list-side-filter-header d-flex d-lg-none">
                            <div class="pxp-list-side-filter-header-label text-dark">Lọc theo tháng</div>
                            <a role="button" style="background: #525050;padding: 4px 8px;border-radius: 4px;"><span
                                    class="fa fa-sliders"></span></a>
                        </div>
                        <div class="mt-4 mt-lg-0 d-lg-block pxp-list-side-filter-panel">
                            <h3 class="text-dark">Lựa's chọn</h3>
                            <div class="list-group mt-2 mt-lg-3">
                                <label style="cursor: pointer;"
                                    class="list-group-item d-flex justify-content-between align-items-center label-date">
                                    <span class="d-flex">
                                        <input class="form-check-input me-2" name="filtter" type="radio"
                                            value="" >
                                        Tuần thứ nhất
                                    </span>
                                    <span class="badge rounded-pill">{{ $data['week1'] }}</span>
                                </label>
                                <label style="cursor: pointer;"
                                    class="list-group-item d-flex justify-content-between align-items-center mt-2 mt-lg-3 label-date">
                                    <span class="d-flex">
                                        <input class="form-check-input me-2" name="filtter" type="radio"
                                            value="">
                                        Tuần thứ hai
                                    </span>
                                    <span class="badge rounded-pill">{{ $data['week2'] }}</span>
                                </label>
                                <label style="cursor: pointer;"
                                    class="list-group-item d-flex justify-content-between align-items-center mt-2 mt-lg-3 label-date">
                                    <span class="d-flex">
                                        <input class="form-check-input me-2" name="filtter" type="radio"
                                            value="">
                                        Tuần thứ ba
                                    </span>
                                    <span class="badge rounded-pill">{{ $data['week3'] }}</span>
                                </label>
                                <label style="cursor: pointer;"
                                    class="list-group-item d-flex justify-content-between align-items-center mt-2 mt-lg-3 label-date">
                                    <span class="d-flex">
                                        <input class="form-check-input me-2" name="filtter" type="radio"
                                            value="">
                                        Tuần cuối cùng
                                    </span>
                                    <span class="badge rounded-pill">{{ $data['week4'] }}</span>
                                </label>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-9 col-xl-8 col-xxl-9">
                    <div class="row" style="margin-top:30px;">
                        <div class="card py-3" style="border-radius: 20px;">
                            <table class="table table-hover table-light mt-2" id="table-data">
                                <thead>
                                    <tr>
                                        <th style="background-color: none!important;">Ngày</th>
                                        <th style="background-color: none!important;">Chi tiêu</th>
                                        <th style="background-color: none!important;">Tổng tiền</th>
                                        <th style="background-color: none!important;">Tổng góp</th>
                                        <th style="background-color: none!important;">Số dư/âm</th>
                                    </tr>
                                </thead>
                                <tbody>
                                </tbody>
                            </table>
                            <div class="d-flex px-4 py-2 mt-3 justify-content-around">
                                <div class="text-dark">Tổng tiền(tháng):
                                    <span id="total_price"></span>
                                </div>
                                <div class="text-dark">Tổng góp(tháng):
                                    <span id="contribute"></span>
                                </div>
                                <div class="text-dark">Số dư/âm(tháng):
                                    <span id="surplus"></span>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="mb-5">
                    <form data-route="{{ route('store') }}" class="col-10" style="margin: 0 auto" id="set_form">
                        <div class="mt-4 row">
                            <div class="col-md-6" style="text-align: left">
                                <label for="" class="form-label ms-2">Chi tiêu (<span class="text-danger"
                                        style="position: relative;
                                    top: 4px;">*</span>)</label>
                                <input type="text" class="form-control" name="content" required
                                    placeholder="Nhập chi tiêu...">
                            </div>
                            <div class="col-md-6" style="text-align: left">
                                <label for="" class="form-label ms-2">Tổng tiền (<span class="text-danger"
                                        style="position: relative;
                                    top: 4px;">*</span>)</label>
                                <input type="text" class="form-control" name="total_price" required
                                    placeholder="Nhập tổng tiền...">
                            </div>
                        </div>
                        <div class="mt-4 row" style="justify-content: flex-end;">
                            <div class="col-md-6" style="text-align: left">
                                <label for="" class="form-label ms-2">Tiền góp (<span class="text-danger"
                                        style="position: relative;
                                    top: 4px;">*</span>)</label>
                                <input type="text" class="form-control" name="contribute" required
                                    placeholder="Nhập tiền góp...">
                            </div>
                        </div>
                        <div class="mt-4 row" style="justify-content: flex-end;">
                            <div class="col-md-6" style="text-align: left">
                                <button id="btn-setup" type="button" class="btn btn-primary text-white"
                                    style="float:right">Nhập thông tin</button>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </section>
    <script src="{{ asset('js/jquery-3.4.1.min.js') }}"></script>
    <script src="{{ asset('js/bootstrap.bundle.min.js') }}"></script>
    <script src="{{ asset('js/owl.carousel.min.js') }}"></script>
    <script src="{{ asset('js/nav.js') }}"></script>
    <script src="{{ asset('js/main.js') }}"></script>
    <script type="text/javascript">
        $(function() {
            $.ajaxSetup({
                headers: {
                    'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
                }
            });
        });
        $(document).ready(function() {
            api(false);
            var today = new Date;
            var date = 'Ngày ' + today.getDate() + '-' + (today.getMonth() + 1) + '-' + today.getFullYear();
            $('#text-date').text(date);

            function api(checkData) {
                if(checkData) {
                    $('#table-data').find('tbody').html('');
                }
                $.ajax({
                    url: '{{ route('api') }}',
                    dataType: 'json',
                    success: function(response) {
                        response.data.forEach(function(each) {
                            $('#table-data').append($('<tr>')
                                .append($('<td>').append(each.date))
                                .append($('<td>').append(each.content))
                                .append($('<td>').append(each.total_price))
                                .append($('<td>').append(each.contribute))
                                .append($('<td>').append(each.surplus))
                            );
                        });
                        $('#total_price').text(response.total_month.total_price);
                        $('#contribute').text(response.total_month.contribute);
                        $('#surplus').text(response.total_month.surplus);
                    },

                })
            }

            $('#btn-setup').on('click', function(e) {
                var form = $(this).parents('form');
                if (confirm('Are you sure you want to store?')) {
                    $.ajax({
                        type: 'post',
                        url: form.data('route'),
                        data: form.serialize(),
                        success: function(response, textStatus, xhr) {
                            api(true);
                        }
                    });
                }
            })
            $('input[type=radio]').on('click', function(e) {
                $('.label-date').removeClass('pxp-checked');
                $(this).parents('label').addClass('pxp-checked');
            })
        });
    </script>
</body>

</html>
