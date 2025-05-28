<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/node_modules/fullpage.js/dist/fullpage.min.css">
    <link rel="icon" href="${pageContext.request.contextPath}/assets/image/logo2-removebg-preview.png">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Caveat+Brush&family=Hi+Melody&family=Patrick+Hand&display=swap"
        rel="stylesheet">
    <title>ATKD ChildCare</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/style_2.css">

    <style>
        /* CSS cho body và các section của fullpage.js */
        body {
            margin: 0;
            font-family: 'Patrick Hand', cursive;
            padding-top: 70px; /* Đảm bảo nội dung không bị header cố định che */
            box-sizing: border-box;
        }

        /* --- CSS CHO HEADER CHÍNH --- */
        .main-header {
            width: 100%;
            display: flex; /* Sử dụng Flexbox để căn chỉnh các phần tử */
            justify-content: space-between; /* Đẩy logo sang trái, menu ra giữa, avatar sang phải */
            align-items: center;  Căn giữa theo chiều dọc 
            padding: 10px 20px;
            background-color: white; /* Đảm bảo có màu nền */
            box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
            position: fixed; /* Cố định header khi cuộn */
            top: 0;
            left: 0;
            z-index: 1000; /* Đảm bảo header nằm trên các phần tử khác */
        }

        /* CSS cho phần Logo trong Header */
        .main-header .logo-main {
            font-size: 24px;
            font-weight: bold;
            color: #333; /* Màu chữ cho tên logo */
            text-decoration: none;
            display: flex;
            align-items: center;
            flex-shrink: 0; /* Ngăn logo bị co lại */
        }

        .main-header .logo-main img {
            height: 40px; /* Kích thước logo */
            margin-right: 10px;
        }

        /* CSS cho Navigation Menu */
        .main-header nav {
            flex-grow: 1; /* Cho phép nav chiếm không gian còn lại để căn giữa */
            text-align: center; /* Căn giữa nội dung của nav */
        }

        .main-header nav ul {
            list-style: none;
            margin: 0;
            padding: 0;
            display: flex; /* Sử dụng Flexbox cho các mục menu */
            justify-content: center; /* Căn giữa các mục menu */
            gap: 20px; /* Khoảng cách giữa các mục menu */
        }

        .main-header nav ul li a {
            text-decoration: none;
            color: #555; /* Màu chữ mặc định của menu */
            font-weight: bold;
            padding: 5px 10px;
            transition: color 0.3s ease;
            white-space: nowrap; /* Ngăn chữ bị ngắt dòng */
        }

        .main-header nav ul li a:hover {
            color: #7d44c8; /* Màu hover của menu */
        }

        /* CSS cho Avatar và Dropdown Menu */
        .avatar-container {
            position: relative;
            cursor: pointer;
            margin-left: 20px; /* Khoảng cách giữa menu và avatar */
            flex-shrink: 0; /* Ngăn avatar bị co lại */
        }

        .avatar-container img {
            border-radius: 50%;
            width: 40px;
            height: 40px;
            object-fit: cover;
        }

        .dropdown-menu {
            position: absolute;
            right: 0;
            top: 50px; /* Đặt dưới avatar một chút */
            background-color: white;
            color: black;
            border: 1px solid #ccc;
            border-radius: 8px;
            width: 180px;
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
            display: none; /* Mặc định ẩn */
            z-index: 1001; /* Đảm bảo dropdown nằm trên header */
        }

        .dropdown-menu a {
            display: block;
            padding: 10px;
            text-decoration: none;
            color: black;
            text-align: left;
        }

        .dropdown-menu a:hover {
            background-color: #f0f0f0;
        }

        /* Đảm bảo FullPage.js navigation không bị che bởi header */
        #fp-nav {
            z-index: 999; /* Đặt thấp hơn header nhưng cao hơn nội dung */
        }

        /* Các section của FullPage.js */
        .section {
            /* FullPage.js tự động xử lý vị trí.
               padding-top body đã giải quyết việc không bị header che. */
        }
    </style>
</head>

<body>
    <header class="main-header">
        <a href="#welcome" class="logo-main">
            <img src="${pageContext.request.contextPath}/assets/image/logo.png" alt="ATKD ChildCare Logo" /> ATKD ChildCare
        </a>
        <nav>
            <ul>
                <li><a href="#about-us" class="navigation-links">About us</a></li>
                <li><a href="#section-2" class="navigation-links">Where we are</a></li>
                <li><a href="#section-3" class="navigation-links">Vision & Mission</a></li>
                <li><a href="#section-4" class="navigation-links">What we do</a></li>
                <li><a href="#feedback" class="navigation-links">Parent's feedback</a></li>
            </ul>
        </nav>
        <div class="avatar-container" onclick="toggleMenu()">
            <img src="https://i.pravatar.cc/40" alt="Avatar" />
            <div class="dropdown-menu" id="dropdown">
                <a href="${pageContext.request.contextPath}/childdetailservlet">⚙ Setting</a>
                <a href="${pageContext.request.contextPath}/index.html">🚪 Logout</a>
            </div>
        </div>
    </header>

    <div id="fullpage">
        <div class="section section-custom" id="welcome">
            <div class="title-container">
                <h1>We embrace<br /><span class="highlight">the magic</span> of childhood</h1>
                <p style="color: #dad4e3">We aim to care for your child <br />as you would at home in a safe, fun and
                    happy way...</p>
            </div>
        </div>

        <div class="section section-custom" id="about-us">
            <h2>A little bit <span class="highlight">about us</span></h2>

            <div class="sub-text">
                <p>After more than <span class="highlight">10 years</span> of pioneering the application and
                    spreading
                    of Montessori education methods in Vietnam, ATKD ChildCare is highly appreciated by parents and
                    <span class="highlight">Montessori experts</span> in applying the standard Montessori
                    educational
                    method, bringing to the environment. Personalized learning to unleash the inherent potential in
                    each
                    child.
                </p>
                <p>With an understanding of the psychophysiological characteristics of children in the period <span
                        class="highlight">0-6 years
                        old</span>, combined with subtle observations and daily notes, ATKD ChildCare safety and
                    health
                    teachers develop a personal development <span class="highlight">roadmap for each child</span> to
                    support each child. Support children in the most timely manner as well as provide dedicated
                    care,
                    taking care of each child's meal and sleep.</p>
            </div>
        </div>

        <div class="section section-custom section-text-img" id="section-2">
            <img src="${pageContext.request.contextPath}/assets/image/section-2.jpeg" alt="">
            <div class="text-container">
                <h2><span>Vietnam's most trusted</span><br />child care resource</h2>
                <p>The international preschool system ATKD ChildCare was established in May 2022, pioneering in
                    applying
                    the <span class="highlight">Montessori</span> educational philosophy to teaching, laying the
                    foundation for the development of the
                    Montessori method in Vietnam.</p>
                <p>Currently, ChildCare safety system has facilities in: <span class="highlight">Hanoi</span>, <span
                        class="highlight">Ho Chi Minh</span>, <span class="highlight">Quang Ninh,</span> ... with a
                    series of classrooms designed in an open style to make the most of natural light and air. The
                    spacious and comfortable function rooms ensure safety standards and meet the learning and living
                    needs of Students.</p>
            </div>
        </div>

        <div class="section section-custom section-small-blocks" id="section-3">
            <div class="small-block small-block-3">
                <h2>Our <span>mission</span></h2>
                <p>ATKD ChildCare is committed to providing the community with a sustainable educational
                    environment,
                    inspiring creativity.
                    <br />
                    <br />
                    Here at ATKD ChildCare, we feel privileged to share your child's early years and
                    we are committed to making sure that this is the right place for your child and for you. We
                    fully recognise the great trust that you have placed in us when deciding to leave your child here
                    and
                    we will work hard to ensure that we repay that trust.
                </p>
            </div>
            <div class="small-block small-block-3">
                <h2>Our <span>goals</span></h2>
                <p>Our carers provide genuine love and concern for the children in their care, thus providing them
                    with
                    a warm, friendly and inviting atmosphere where your child will feel secure and happy in their
                    new
                    environment.
                    <br />
                    <br />
                    We want every part of our service to not only meet, but to exceed
                    your needs and those of
                    your child. This requires partnership, so at ATKD ChildCare we believe that families and
                    educators
                    must cooperate and work together, sharing information and building relationships and a sense of
                    community and belonging.
                </p>
            </div>
            <div class="small-block small-block-3">
                <h2>Things <span>to do</span></h2>
                <p>We will:<br />
                    <br />
                    - Create a learning environment which will encourage children to interact, take on roles and
                    develop
                    relationships with others through play<br />
                    <br />
                    - Encourage children to be respectful, sensitive and thoughtful towards their natural
                    environment<br />
                    <br />
                    - Provide a nutritious and varied menu with the emphasis on organic, natural foods and a nut
                    free
                    environment.
                </p>
            </div>
        </div>

        <div class="section section-custom section-text-img" id="section-4">
            <div class="text-container">
                <h2><span>Teaching, nurturing, and building </span>confidence is our specialty</h2>
                <p>To become a leading institution in the field of education and training throughout from
                    Kindergarten
                    to Pre-University with the goal of combining Eastern values with international education to
                    train
                    global citizens. bridge.</p>
                <p>
                    Provide high-quality educational programs in an innovative and challenging learning environment.
                    Applying innovative and advanced methods in teaching and learning keeps students interested and
                    confident about lifelong learning.</p>
            </div>
            <img src="${pageContext.request.contextPath}/assets/image/section-4.jpeg" alt="">
        </div>

        <div class="section section-custom section-small-blocks" id="feedback">
            <div class="small-block small-block-2">
                <h1>"</h1>
                <p>Mình có một bé 3,5 tuổi đã theo học tại trường ngay từ thời gian đầu mới thành lập. Quan điểm của
                    mình và gia đình là đối với việc giáo dục con trẻ thì môi trường và phương pháp là hai yếu tố
                    rất
                    quan trọng, ảnh hưởng lớn đến trẻ. Cả hai yếu tố này nhà trường đều đáp ứng được rất tốt…</p>
                <h5><span>Mr. Phạm Thanh Tùng - Ph Bé Nancy
                    </span></h5>
            </div>
            <div class="small-block small-block-2">
                <h1>"</h1>
                <p>Điều tôi ấn tượng nhất ở nhà trường chính là các hoạt động ngoại khóa của trường. Mỗi sự kiện của
                    trường được tổ chức quy mô, hướng tới những thông điệp ý nghĩa mà thông qua đó các con được tự
                    do
                    sáng tạo, trau dồi kỹ năng và hình thành những đức tính tốt.

                </p>
                <h5><span>Mrs. Ngô Thanh Thúy - Phụ huynh bé Bin, lớp Orchid</span></h5>
            </div>
        </div>
        <footer class="section section-custom" id="footer">Copyright © 2022. All Rights Reserved | Designed by:
            @trananhhh | </footer>
    </div>
    
    <script>
        function toggleMenu() {
            const menu = document.getElementById("dropdown");
            menu.style.display = menu.style.display === "block" ? "none" : "block";
        }

        document.addEventListener("click", function (event) {
            const avatar = document.querySelector(".avatar-container");
            const menu = document.getElementById("dropdown");
            // Đảm bảo rằng click không phải bên trong avatar hoặc dropdown menu
            if (!avatar.contains(event.target) && !menu.contains(event.target)) {
                menu.style.display = "none";
            }
        });
    </script>
    
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/fullPage.js/4.0.9/fullpage.min.js"
        integrity="sha512-JSVRnP8UFs0ieN/cvP9v4vmW1CotIaEKKN7W+4JaKNrllZolTv2aJfVGn4BFdfZ1jRZxgTAAaXWdlZbEm9iwFA=="
        crossorigin="anonymous" referrerpolicy="no-referrer"></script>
    <script>
        // Khởi tạo FullPage.js
        new fullpage('#fullpage', {
            autoScrolling: true,
            scrollHorizontally: true, // Giữ nguyên nếu bạn có slide ngang
            navigation: true,
            navigationPosition: 'right',
            scrollingSpeed: 700, // Tốc độ cuộn (mặc định là 700)
            easingcss3: 'ease-in-out', // Hiệu ứng cuộn CSS3
            // Đối với các liên kết trong navbar, FullPage.js sẽ tự động cuộn đến section tương ứng
        });
    </script>
    </body>

</html>