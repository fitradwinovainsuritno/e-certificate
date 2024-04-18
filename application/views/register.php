
<div class="col-md-4 grid-margin stretch-card" style="margin-top: 70px; margin-right: auto; margin-left: auto;">
              <div class="card">
                <div class="card-body">
                  <h1 class="card-title font-size: 50px">Register</h1>
                  <form action="<?= base_url('Auth/register') ?>" method="post" class="forms-sample">
                    <div class="form-group">
                      <label for="exampleInputUsername1">Username</label>
                      <input type="text" name="username"class="form-control" id="exampleInputUsername1" placeholder="Username">
                    </div>
                    <div class="form-group">
                      <label for="exampleInputEmail1">Email address</label>
                      <input type="email" name="email"class="form-control" id="exampleInputEmail1" placeholder="Email">
                    </div>
                    <form class="forms-sample">
                    <div class="form-group">
                      <label for="exampleInputUsername1">Full name</label>
                      <input type="text" name="full_name"class="form-control" id="exampleInputUsername1" placeholder="Full Name">
                    </div>
                    <div class="form-group">
                      <label for="exampleInputPassword1">Password</label>
                      <input type="password" name="password1"class="form-control" id="exampleInputPassword1" placeholder="Password">
                    </div>
                    <div class="form-group">
                      <label for="exampleInputConfirmPassword1">Confirm Password</label>
                      <input type="password" name="password2"class="form-control" id="exampleInputConfirmPassword1" placeholder="Password">
                    </div>
                    
                    <button type="submit" class="btn btn-success me-2">Submit</button>
                    <button class="btn btn-danger">Cancel</button>
                  </form>
                  <br>
                  <a class="text-center" href="<?= base_url('auth') ?>">Login</a>
                </div>
              </div>
            </div>