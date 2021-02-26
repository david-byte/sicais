<div class="container">
  <!-- Outer Row -->
  <div class="row justify-content-center">
    <div class="col-xl-10 col-lg-12 col-md-9">
      <div class="card o-hidden border-0 shadow-lg my-5" style="margin-top: 9rem !important;">
        <div class="card-body p-0">
          <!-- Nested Row within Card Body -->
          <div class="row">
            <div class="col-lg-6 d-none d-lg-block">
              <img src="<?php echo base_url('public/img/logoprep.png'); ?>" alt="" width="500" height="500">
            </div>
            <div class="col-lg-6">
              <!-- Mensagens de error -->
              <?php if ($message = $this->session->flashdata('error')) : ?>
                <div class="row">
                  <div class="col-md-12">
                    <div class="alert alert-danger alert-dismissible fade show" role="alert">
                      <strong><i class="fas fa-exclamation-triangle"></i>&nbsp;<?php echo $message; ?></strong>
                      <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                      </button>
                    </div>
                  </div>
                </div>
              <?php endif; ?>
              <!-- Mensagens de Sucesso -->
              <?php if ($message = $this->session->flashdata('sucesso')) : ?>
                <div class="row">
                  <div class="col-md-12">
                    <div class="alert alert-success alert-dismissible fade show" role="alert">
                      <strong><i class="far fa-smile-wink"></i>&nbsp;<?php echo $message; ?></strong>
                      <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                      </button>
                    </div>
                  </div>
                </div>
              <?php endif; ?>
              <!-- Mensagens de Info -->
              <?php if ($message = $this->session->flashdata('info')) : ?>
                <div class="row">
                  <div class="col-md-12">
                    <div class="alert alert-primary alert-dismissible fade show" role="alert">
                      <strong><i class="far fa-smile-wink"></i>&nbsp;<?php echo $message; ?></strong>
                      <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                      </button>
                    </div>
                  </div>
                </div>
              <?php endif; ?>
              <div class="p-5">
                <div class="text-center">
                  <h1 class="h4 text-gray-900 mb-4">Efetue o login!</h1>
                </div>
                <form class="user" method="POST" name="form_auth" action="<?php echo base_url('login/auth'); ?>">
                  <div class="form-group">
                    <div class="input-group">
                      <div class="input-group-prepend">
                        <div class="input-group-text"><i class="far fa-user"></i></div>
                      </div>
                      <input type="email" class="form-control form-control-user" name="email" placeholder="Identidade">
                    </div>
                  </div>
                  <div class="form-group">
                  <div class="input-group">
                      <div class="input-group-prepend">
                        <div class="input-group-text"><i class="fas fa-unlock-alt"></i></div>
                      </div>
                    <input type="password" class="form-control form-control-user" name="password" placeholder="Entre com sua Senha...">
                  </div>
                  </div>
                  <button type="submit" class="btn btn-primary btn-user btn-block">Entrar</button>
                </form>
                <hr>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</div>
<p>
  <?php echo lang('login_identity_label', 'identity'); ?>
  <?php echo form_input($identity); ?>
</p>

<p>
  <?php echo lang('login_password_label', 'password'); ?>
  <?php echo form_input($password); ?>
</p>

<p>
  <?php echo lang('login_remember_label', 'remember'); ?>
  <?php echo form_checkbox('remember', '1', FALSE, 'id="remember"'); ?>
</p>


<p><?php echo form_submit('submit', lang('login_submit_btn')); ?></p>

<?php echo form_close(); ?>

<p><a href="forgot_password"><?php echo lang('login_forgot_password'); ?></a></p>