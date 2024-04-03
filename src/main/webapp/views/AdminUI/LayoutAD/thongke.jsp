<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- control-button -->
		<ul class="nav nav-tabs" id="myTab" role="tablist">
            <!-- Favorites Button -->
            <li class="nav-item" role="presentation">
                <button class="nav-link active" id="tabs_fa" data-bs-toggle="tab" data-bs-target="#fa-pane"
                    type="button" role="tab" aria-controls="home-tab-pane" aria-selected="true"><i class="fa-regular fa-heart"></i> FAVOURITES</button>
            </li>
            <!-- FU Button -->
            <li class="nav-item" role="presentation">
                <button class="nav-link" id="tabs_fa_user" data-bs-toggle="tab" data-bs-target="#fa-user-pane"
                    type="button" role="tab" aria-controls="profile-tab-pane" aria-selected="false"><i class="fa-regular fa-thumbs-up"></i> FAVOURITE USERS</button>
            </li>
            <!-- Share Button -->
            <li class="nav-item" role="presentation">
                <button class="nav-link" id="tabs_share" data-bs-toggle="tab" data-bs-target="#share-pane"
                    type="button" role="tab" aria-controls="profile-tab-pane" aria-selected="false"><i class="fa-solid fa-share-nodes"></i> SHARED FRIENDS</button>
            </li>
		</ul>
	<!-- content -->
		<div class="tab-content" style="background: white">
			<div class="tab-pane fade show active" id="fa-pane" role="tabpanel">
				<h1>FAVORITES</h1>
				<div class="row">
					<table class="table table-bordered text-center">
					<thead>
					    <tr>
					      <th scope="col">Video Title</th>
					      <th scope="col">Favorite Count</th>
					      <th scope="col">Latest Date</th>
					      <th scope="col">Oldest Date</th>
					    </tr>
					</thead>
					<tbody>
					    <tr>
					      <td>Exit Sign</td>
					      <td>10.000</td>
					      <td>10/11/2023</td>
					      <td>15/11/2023</td>
					    </tr>
					    <tr>
					      <td>Từng Quen</td>
					      <td>11.000</td>
					      <td>10/11/2023</td>
					      <td>15/11/2023</td>
					    </tr>
					    <tr>
					      <td>Anh Đã Ổn Hơn</td>
					      <td>5.000</td>
					      <td>10/11/2023</td>
					      <td>15/11/2023</td>
					    </tr>
					</tbody>
				</table>
				</div>
			</div>
			<div class="tab-pane fade" id="fa-user-pane" role="tabpanel">
				<h1>FAVORITE USERS</h1>
				<div class="row">
					<div class="mb-3">
		  				<label class="form-label" >Video Title </label>
		  				<select class="form-select">
						  <option value="">Exit Sign</option>
						  <option value="">Blue Tequila</option>
						  <option value="">Từng Quen</option>
						</select>
					</div>
				</div>
				<div class="row">
					<table class="table table-bordered text-center">
					<thead>
					    <tr>
					      <th scope="col">UserName</th>
					      <th scope="col">FullName</th>
					      <th scope="col">Email</th>
					      <th scope="col">Favorite Date</th>
					    </tr>
					</thead>
					<tbody>
					    <tr>
					      <td>User01</td>
					      <td>Khách Hàng</td>
					      <td>abc@gmail.com</td>
					      <td>15/11/2023</td>
					    </tr>
					    <tr>
					      <td>User02</td>
					      <td>Khách Hàng</td>
					      <td>abc@gmail.com</td>
					      <td>15/11/2023</td>
					    </tr>
					    <tr>
					      <td>User03</td>
					      <td>Khách Hàng</td>
					      <td>abc@gmail.com</td>
					      <td>15/11/2023</td>
					    </tr>
					</tbody>
				</table>
				</div>
			</div>
			<div class="tab-pane fade" id="share-pane" role="tabpanel">
				<h1>SHARED FRIENDS</h1>
				<div class="row">
					<div class="mb-3">
		  				<label class="form-label" >Video Title </label>
		  				<select class="form-select">
						  <option value="">Exit Sign</option>
						  <option value="">Blue Tequila</option>
						  <option value="">Từng Quen</option>
						</select>
					</div>
				</div>
				<div class="row">
					<table class="table table-bordered text-center">
					<thead>
					    <tr>
					      <th scope="col">Sender Name</th>
					      <th scope="col">Sender Email</th>
					      <th scope="col">Receiver Email</th>
					      <th scope="col">Send Date</th>
					    </tr>
					</thead>
					<tbody>
					    <tr>
					      <td>User01</td>
					      <td>user1@gmail.com</td>
					      <td>abc@gmail.com</td>
					      <td>15/11/2023</td>
					    </tr>
					    <tr>
					      <td>User02</td>
					      <td>user2@gmail.com</td>
					      <td>abc@gmail.com</td>
					      <td>18/11/2023</td>
					    </tr>
					    <tr>
					      <td>User03</td>
					      <td>user3@gmail.com</td>
					      <td>abc@gmail.com</td>
					      <td>10/11/2023</td>
					    </tr>
					</tbody>
				</table>
				</div>
			</div>
		</div>