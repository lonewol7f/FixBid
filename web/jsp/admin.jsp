<%--
  User: lonewol7f
  Date: 3/16/2021
  Time: 8:47 PM
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
          integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/headerFooter.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/admin.css">
    <link rel="stylesheet" href="https://pro.fontawesome.com/releases/v5.10.0/css/all.css"
          integrity="sha384-AYmEC3Yw5cVb3ZcuHtOA93w35dYTsvhLPVnYs9eStHfGJvOvKxVfELGroGkvsg+p" crossorigin="anonymous"/>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <script src="${pageContext.request.contextPath}/js/admin.js"></script>
    <title>Dashboard</title>
</head>
<body>
<%--Vertical navigation bar start--%>
<div class="vertical-nav bg-white" id="sidebar">
    <div class="py-4 px-3 mb-4 bg-light">
        <div class="media d-flex align-items-center"><img
                src="#" alt="..." width="65"
                class="mr-3 rounded-circle img-thumbnail shadow-sm">
            <div class="media-body">
                <h4 class="m-0">Name</h4>
            </div>
        </div>
    </div>

    <p class="text-gray font-weight-bold text-uppercase px-3 small pb-4 mb-0">Main</p>

    <ul class="nav flex-column bg-white mb-0">
        <li class="nav-item">
            <a href="#" onclick="dashboard()" class="nav-link text-dark font-italic bg-light">
                <i class="fas fa-tachometer-alt mr-3 text-primary fa-fw"></i>
                Dashboard
            </a>
        </li>
        <li class="nav-item">
            <a href="#" onclick="users()" class="nav-link text-dark font-italic bg-light">
                <i class="fa fa-users mr-3 text-primary fa-fw"></i>
                Users
            </a>
        </li>
        <li class="nav-item">
            <a href="#" onclick="feedBack()" class="nav-link text-dark font-italic bg-light">
                <i class="fa fa-comments mr-3 text-primary fa-fw"></i>
                Feedback
            </a>
        </li>
    </ul>

    <p class="text-gray font-weight-bold text-uppercase px-3 small py-4 mb-0">Reports</p>

    <ul class="nav flex-column bg-white mb-0">
        <li class="nav-item">
            <a href="#" class="nav-link text-dark font-italic bg-light">
                <i class="fa fa-area-chart mr-3 text-primary fa-fw"></i>
                Area charts
            </a>
        </li>
        <li class="nav-item">
            <a href="#" class="nav-link text-dark font-italic bg-light">
                <i class="fa fa-bar-chart mr-3 text-primary fa-fw"></i>
                Bar charts
            </a>
        </li>
        <li class="nav-item">
            <a href="#" class="nav-link text-dark font-italic bg-light">
                <i class="fa fa-pie-chart mr-3 text-primary fa-fw"></i>
                Pie charts
            </a>
        </li>
        <li class="nav-item">
            <a href="#" class="nav-link text-dark font-italic bg-light">
                <i class="fa fa-line-chart mr-3 text-primary fa-fw"></i>
                Line charts
            </a>
        </li>
    </ul>

    <p class="text-gray font-weight-bold text-uppercase px-3 small py-4 mb-0">Utility</p>

    <ul class="nav flex-column bg-white mb-0">
        <li class="nav-item">
            <a href="#" class="nav-link text-dark font-italic bg-light">
                <i class="fas fa-user mr-3 text-primary fa-fw"></i>
                Profile
            </a>
        </li>
        <li class="nav-item">
            <a href="#" class="nav-link text-dark font-italic bg-light">
                <i class="fas fa-sign-out-alt mr-3 text-primary fa-fw"></i>
                Log Out
            </a>
        </li>
    </ul>
</div>
<!-- End vertical navbar -->
<div class="page-content p-5">
    <div id="dashboard-div">
        <h1>Dashboard</h1>
        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc ac fermentum nulla. Duis cursus quam ut ante
            venenatis consequat. Ut accumsan dui consectetur luctus tempus. In at lectus ultricies, fringilla mi in,
            dictum elit. Donec porta elit vestibulum, volutpat est quis, scelerisque eros. Fusce sodales, ipsum ut
            ultricies tempor, felis eros tincidunt massa, id ultricies arcu orci ac lacus. Duis mauris leo, consectetur
            at finibus id, congue tempor lorem. Nam ex elit, fermentum sit amet ipsum ultrices, bibendum volutpat velit.
            Mauris cursus placerat felis, eu suscipit erat auctor eu. Integer consequat enim ex, a congue nisl ultrices
            quis. Etiam bibendum, tortor sit amet dignissim ultrices, elit urna blandit velit, et consequat arcu dolor
            ac nulla. Etiam fringilla lacus eu mollis mattis. Sed dictum accumsan velit, eu viverra risus pharetra
            consectetur. Pellentesque dignissim quam eget quam tristique, ac ultrices purus sodales. Curabitur ac massa
            eget nisl vehicula mollis. Mauris et nisi porttitor, pellentesque tortor sit amet, rutrum massa.</p>

        <p> Mauris at ligula tellus. Maecenas non orci eget magna ultricies vestibulum. Curabitur arcu ligula, hendrerit
            eget libero quis, volutpat molestie augue. Cras aliquet, tellus non tincidunt ultricies, nisi mi pulvinar
            ante, vel placerat lorem ante eget diam. Nullam justo est, sagittis et lectus et, porta ullamcorper diam.
            Pellentesque convallis justo nec pulvinar lacinia. Etiam lacus risus, eleifend vel dolor consequat,
            dignissim euismod odio. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce blandit sit amet
            ipsum nec faucibus. In vel varius ligula, at interdum libero. Praesent ornare metus vitae malesuada
            vestibulum. Ut pellentesque posuere ante, ornare venenatis urna pulvinar ut. Ut commodo orci nec purus
            rutrum vehicula. Proin ultrices scelerisque ex, eu tincidunt nunc facilisis ac. Aliquam eleifend a neque
            quis iaculis. Etiam vel tellus vitae purus aliquam hendrerit.</p>

        <p> Maecenas blandit, sapien vel rutrum cursus, turpis massa dapibus dui, sit amet viverra nisi justo eu sem.
            Aliquam tempor feugiat purus at tincidunt. Mauris laoreet dignissim ex, sed pellentesque lectus condimentum
            vitae. Donec dictum ligula nisi, ut blandit eros consequat et. Mauris viverra, tortor ut lobortis consequat,
            risus nisi fringilla ex, ac fringilla libero massa pellentesque justo. Sed non dui fringilla, dapibus felis
            id, porta ipsum. Donec ex eros, vestibulum nec turpis sed, ultricies vestibulum risus. In a vestibulum
            lacus. Aliquam hendrerit erat lacinia nisi aliquet, non mattis lectus imperdiet. Aliquam in leo a erat
            tristique ornare vitae vitae nisi. Fusce luctus venenatis turpis ac ultricies.</p>

        <p> Duis quis blandit ligula. Nullam placerat tempus neque, bibendum dapibus ex ultricies ac. Nulla vehicula
            augue at consequat condimentum. Aliquam porttitor quam non quam vehicula euismod. Cras id purus finibus elit
            ultricies lacinia eu ut libero. Nulla aliquam, diam vitae venenatis cursus, neque tellus finibus risus, at
            condimentum diam tellus sed nisl. Ut convallis venenatis ipsum vel vestibulum. Duis ac cursus nulla, id
            tempus augue. Vivamus commodo leo vitae purus vestibulum, nec placerat magna dictum. Duis lacinia sodales
            lorem vitae euismod. Sed odio metus, bibendum non dui et, ornare ullamcorper elit. Sed sed leo quis massa
            porta lobortis. Nulla tincidunt dolor ut nisi ornare rutrum.</p>

        <p> Nullam ac viverra enim. Etiam tempus libero sit amet odio eleifend pharetra. Vivamus vulputate libero
            posuere eros tincidunt, molestie feugiat sapien tristique. Praesent orci lorem, sagittis sit amet rutrum at,
            cursus quis mi. Sed luctus et velit et tincidunt. Curabitur rhoncus ornare est, ut dictum neque dictum et.
            Vestibulum tincidunt feugiat magna, id vehicula libero finibus ac. Nullam erat est, aliquet sed nisl
            imperdiet, dictum mollis turpis. Fusce ornare purus massa, ut ornare magna lobortis id. Donec quam nibh,
            volutpat non erat id, suscipit interdum diam. Nullam et dapibus odio. Ut ultricies enim lacus, et efficitur
            felis auctor et. Integer laoreet purus id nunc ultrices iaculis. Interdum et malesuada fames ac ante ipsum
            primis in faucibus. Maecenas semper aliquam erat sed ullamcorper.</p>
    </div>
    <div id="users-div" style="display: none">
        <h1>Users</h1>
        Usersssss sed tortor nec libero tristique faucibus. Suspendisse posuere molestie nunc, nec dignissim metus
        posuere at. Nam luctus magna sapien, tempus pretium nisi auctor non. Aenean vehicula tempus ligula, nec placerat
        tortor ultricies vitae. Donec rhoncus lobortis ultricies. Pellentesque feugiat urna in augue imperdiet, in
        feugiat orci semper. Cras fermentum, magna in vulputate ullamcorper, enim dui suscipit nisl, eu dictum mauris
        turpis id justo. Etiam hendrerit congue dui auctor efficitur. Nullam iaculis molestie nisl quis sagittis.
        Aliquam aliquam sem ac risus scelerisque, id imperdiet lacus lobortis. Praesent et varius lorem. Morbi a feugiat
        justo, at interdum odio. Mauris vitae quam ac purus porttitor hendrerit. Sed sem velit, egestas id ultrices id,
        luctus sed tellus. Fusce et convallis nibh, vitae commodo libero.

        Aliquam mattis, sem eget aliquam sollicitudin, turpis neque varius lacus, ut vulputate leo nibh vitae neque.
        Morbi sodales semper purus, id imperdiet justo suscipit eget. Phasellus pharetra, sapien in semper imperdiet,
        nibh augue imperdiet metus, rutrum feugiat lorem massa a risus. Nam ultrices non metus id bibendum. Vivamus
        tortor erat, pretium sed felis at, vestibulum euismod metus. Donec lacinia massa eu dignissim auctor. Vestibulum
        tincidunt, risus at ultrices blandit, elit ante ultrices lorem, ac viverra diam lectus non orci. Vivamus turpis
        ligula, ultricies sed viverra eu, auctor vitae nisi. Phasellus commodo fermentum nisi a tempus.

        Praesent ut massa est. Sed ornare sem odio, sit amet cursus enim tristique vel. Maecenas quis consectetur augue.
        Sed imperdiet, turpis quis luctus porttitor, felis ipsum convallis turpis, vitae convallis neque nunc vitae
        mauris. Cras ullamcorper malesuada purus quis eleifend. Praesent egestas neque at lectus porta, non pretium
        ipsum condimentum. Cras nec tellus felis. Fusce urna sapien, lobortis vel suscipit at, gravida at lorem. Nulla
        venenatis eu nibh at convallis. Vivamus faucibus, justo eu hendrerit rhoncus, nisl felis condimentum odio, eget
        feugiat ex mauris non tortor. Morbi iaculis lacus magna, ac laoreet neque scelerisque eget. Fusce imperdiet
        gravida ligula eu hendrerit. Ut vitae urna nisl. Nullam placerat nisl ante, quis consequat ligula viverra in.

        Quisque vestibulum iaculis est at sodales. Nunc vitae tellus quis libero sodales interdum. Etiam felis libero,
        convallis vitae tortor id, tempus auctor nulla. Phasellus a mi venenatis, pulvinar sapien vitae, dignissim
        tellus. Sed suscipit magna eu massa lobortis, non ullamcorper lorem sollicitudin. Nulla feugiat ultrices massa
        eu ornare. Suspendisse posuere tempor dui nec rhoncus. Aenean bibendum egestas ullamcorper. Sed hendrerit
        bibendum lacus, vitae efficitur ex luctus at. Integer congue libero nec mi sodales rutrum. Etiam pharetra mauris
        eget lobortis maximus. Praesent ac ligula turpis. Integer posuere lobortis lectus, nec euismod purus egestas at.
        Donec placerat quam ac sapien porttitor placerat.

        Vivamus tempus libero dui, ut sollicitudin metus lacinia nec. Nunc euismod augue vitae lacus ultricies, sed
        sollicitudin eros iaculis. Suspendisse potenti. Fusce et nulla convallis, pretium enim vitae, maximus lectus.
        Morbi euismod mauris ac odio hendrerit, ac tristique enim egestas. Aliquam vel elit eget elit aliquet molestie.
        Nulla non ipsum quis elit auctor tincidunt. Phasellus elementum elementum bibendum.

        In in nibh sed odio euismod sollicitudin. Nulla facilisi. Vivamus viverra vehicula imperdiet. Donec ultrices
        lorem ante, ut bibendum ipsum auctor aliquet. Suspendisse vel risus at ex viverra aliquet. Integer sed
        sollicitudin purus. Sed semper rutrum massa, vitae consequat magna cursus eu. Curabitur bibendum felis et
        bibendum vulputate. Fusce varius mi sed egestas venenatis. Fusce tristique vestibulum hendrerit.

        Nunc feugiat condimentum tempor. Nullam mollis aliquet lacinia. Donec ultrices iaculis est ut laoreet. Aenean
        sem magna, cursus sed efficitur sit amet, pellentesque ac diam. Pellentesque habitant morbi tristique senectus
        et netus et malesuada fames ac turpis egestas. Sed elementum sagittis sagittis. Pellentesque porttitor, quam ut
        laoreet cursus, nunc tortor tincidunt augue, et porta lectus lorem maximus metus.

        Nulla sit amet tincidunt metus, tincidunt volutpat diam. Cras pellentesque nibh vulputate, bibendum mi a,
        hendrerit nulla. Integer eget malesuada diam. Ut sit amet condimentum velit, at viverra nisl. Curabitur rutrum
        nulla nec blandit convallis. Fusce scelerisque nibh nunc, eget consectetur massa hendrerit nec. Sed semper
        fringilla felis, sed facilisis lacus dapibus eget.

        Donec quis vulputate nunc. Sed dictum arcu nec tortor lacinia egestas. In in pellentesque nisi. Pellentesque non
        ipsum enim. Mauris consectetur tristique maximus. Duis gravida tortor libero, nec tristique odio tristique ut.
        Donec rhoncus dui vel efficitur vulputate. Quisque ut mattis tortor. Etiam rhoncus at odio nec interdum.

        Praesent sit amet lacus sapien. Sed placerat turpis a libero imperdiet, nec ultricies arcu maximus. Praesent
        semper sagittis tempus. Sed nulla nunc, rhoncus eget diam in, viverra ullamcorper enim. Pellentesque habitant
        morbi tristique senectus et netus et malesuada fames ac turpis egestas. Aenean sed felis sed urna ornare
        sagittis. Donec vel dolor eget dui pharetra faucibus. Integer porta sed quam sed rutrum. Nulla facilisi. In
        dictum ligula ut dapibus hendrerit. Proin vitae lorem tempor dui finibus vulputate.
    </div>
    <div id="feedback-div" style="display: none">
        <h1 class="mb-5">Feedback</h1>
        <h3>Content</h3>
        <hr>
        <p class="mb-1"><i class="far fa-link text-muted fa-fw"></i>&nbsp;&nbsp;<a
                class="text-primary font-italic text-monospace" href="#fb_all" style="text-decoration: inherit">All
            feedbacks</a>
        </p>
        <p class="mb-1"><i class="far fa-link text-muted fa-fw"></i>&nbsp;&nbsp;<a
                class="text-primary font-italic text-monospace" href="#fb_suggest" style="text-decoration: inherit">Suggestions</a>
        </p>
        <p class="mb-1"><i class="far fa-link text-muted fa-fw"></i>&nbsp;&nbsp;<a
                class="text-primary font-italic text-monospace" href="#fb_complain" style="text-decoration: inherit">Complains</a>
        </p>

        <hr>
        <br>
        <div id="fb_all">
            <h3>All Feedbacks</h3>

        </div>
        <div id="fb_suggest">
            <h3>Suggestions</h3>

        </div>
        <div id="fb_complain">
            <h3>Complains</h3>

        </div>
    </div>

    <div class="btt" id="back-to-top">
        <a href="#"><i class="far fa-chevron-up"></i></a>
    </div>
    <script>
        //Get the button
        const mybutton = document.getElementById("back-to-top");

        // When the user scrolls down 20px from the top of the document, show the button
        window.onscroll = function () {
            scrollFunction()
        };

        function scrollFunction() {
            if (document.body.scrollTop > 20 || document.documentElement.scrollTop > 20) {
                mybutton.style.display = "block";
            } else {
                mybutton.style.display = "none";
            }
        }
    </script>
</div>

<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"
        integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN"
        crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"
        integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q"
        crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"
        integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl"
        crossorigin="anonymous"></script>
</body>
</html>
