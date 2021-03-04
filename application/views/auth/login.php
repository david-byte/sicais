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
                <?php $attibutes = array('class' => 'user'); ?>
                <?php echo form_open('auth/login', $attibutes) ?>
                <div class="form-group">
                  <div class="input-group">
                    <div class="input-group-prepend">
                      <div class="input-group-text"><i class="far fa-user"></i></div>
                    </div>
                    <?php echo form_input($identity,'', array('class' => 'form-control form-control-user', 'placeholder' => 'Identidade', 'autofocus' => '')); ?>
                  </div>
                </div>
                <div class="form-group">
                  <div class="input-group">
                    <div class="input-group-prepend">
                      <div class="input-group-text"><i class="fas fa-unlock-alt"></i></div>
                    </div>
                    <?php echo form_password($password, '', array('class' => 'form-control form-control-user', 'placeholder' => 'Sua senha...')); ?>
                  </div>
                </div>
                <?php echo form_submit('button', 'Entrar', array('type' => 'submit', 'class' => 'btn btn-user btn-primary btn-block')); ?>
                <?php echo form_close(); ?>
                <hr>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</div>