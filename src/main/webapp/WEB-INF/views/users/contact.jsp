<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@include file="/WEB-INF/views/layouts/users/taglib.jsp"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<body class="sub_page">
	<!-- inner page section -->
	<section class="inner_page_head">
		<div class="container_fuild">
			<div class="row">
				<div class="col-md-12">
					<div class="full">
						<h3>Contact us</h3>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- end inner page section -->
	<!-- why section -->
	<section class="why_section layout_padding">
		<div class="container">

			<div class="row">
				<div class="col-lg-8 offset-lg-2">
					<div class="full">
						<form action="index.html">
							<fieldset>
								<input type="text" placeholder="Enter your full name"
									name="name" required /> <input type="email"
									placeholder="Enter your email address" name="email" required />
								<input type="text" placeholder="Enter subject" name="subject"
									required />
								<textarea placeholder="Enter your message" required></textarea>
								<input type="submit" value="Submit" />
							</fieldset>
						</form>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- end why section -->
	
	<!-- footer section -->
	<footer class="footer_section">
		<div class="container">
			<div class="row">
				<div class="col-md-4 footer-col">
					<div class="footer_contact">
						<h4>Reach at..</h4>
						<div class="contact_link_box">
							<a href=""> <i class="fa fa-map-marker" aria-hidden="true"></i>
								<span> Location </span>
							</a> <a href=""> <i class="fa fa-phone" aria-hidden="true"></i> <span>
									Call +84 377 659 445 </span>
							</a> <a href=""> <i class="fa fa-envelope" aria-hidden="true"></i>
								<span> itnhtu@gmail.com </span>
							</a>
						</div>
					</div>
				</div>
				<div class="col-md-4 footer-col">
					<div class="footer_detail">
						<a href="index.html" class="footer-logo"> Famms </a>
						<p>Necessary, making this the first true generator on the
							Internet. It uses a dictionary of over 200 Latin words, combined
							with</p>
						<div class="footer_social">
							<a href=""> <i class="fa fa-facebook" aria-hidden="true"></i>
							</a> <a href=""> <i class="fa fa-twitter" aria-hidden="true"></i>
							</a> <a href=""> <i class="fa fa-linkedin" aria-hidden="true"></i>
							</a> <a href=""> <i class="fa fa-instagram" aria-hidden="true"></i>
							</a> <a href=""> <i class="fa fa-pinterest" aria-hidden="true"></i>
							</a>
						</div>
					</div>
				</div>
				<div class="col-md-4 footer-col">
					<div class="map_container">
						<div class="map">
							<div id="googleMap"></div>
						</div>
					</div>
				</div>
			</div>
			<div class="footer-info">
				<div class="col-lg-7 mx-auto px-0">
					<p>
						&copy; <span id="displayYear"></span> All Rights Reserved By <a
							href="<c:url value="/users/trang-chu"/>">HT Team</a><br>

						Distributed By <a href="<c:url value="/users/trang-chu"/>" target="_blank">HT Team</a>
					</p>
				</div>
			</div>
		</div>
	</footer>
	<!-- footer section -->
	<!-- jQery -->
	<script src="js/jquery-3.4.1.min.js"></script>
	<!-- popper js -->
	<script src="js/popper.min.js"></script>
	<!-- bootstrap js -->
	<script src="js/bootstrap.js"></script>
	<!-- custom js -->
	<script src="js/custom.js"></script>
</body>
</html>