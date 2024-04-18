
            <div class="col-md-3 grid-margin stretch-card" style="margin-top: 150px; margin-right: auto; margin-left: auto;">
              <div class="card">
                <div class="card-body">
                  <h4 style= "float:right" class="card-title">Login Users</h4>
                  
                  <form action="<?= base_url('Auth/login') ?>" method="post" class="forms-sample">
                    <div class="form-group">
                      <label for="exampleInputUsername1">Username</label>
                      <input type="text" name="username"class="form-control" id="exampleInputUsername1" placeholder="Username">
                    </div>
                    
                    <div class="form-group">
                      <label for="exampleInputPassword1">Password</label>
                      <input type="password" name="password"class="form-control" id="exampleInputPassword1" placeholder="Password">
                    </div>
                   
                    
                    <button type="submit" class="btn btn-success me-2">Submit</button>
                    <button style= "float:right" class="btn btn-danger">Cancel</button>
                  </form>
                  <br>
                  <a class="text-right" href="<?= base_url('admin') ?>">Login Admin</a>
                  <a class="text-center" style= "float:right" href="<?= base_url('auth/register') ?>">Registrasi</a>
                  
                </div>
              </div>
            </div>