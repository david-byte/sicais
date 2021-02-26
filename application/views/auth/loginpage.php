<body data-open="click" data-menu="vertical-menu" data-col="1-column" class="vertical-layout vertical-menu 1-column  blank-page blank-page">
        <!-- ////////////////////////////////////////////////////////////////////////////-->
        <div class="app-content content container-fluid">
            <div class="content-wrapper">
                <div class="content-header row">
                </div>
                <div class="content-body"><section class="flexbox-container">
                        <div class="col-md-4 offset-md-4 col-xs-10 offset-xs-1  box-shadow-2 p-0">
                            <div class="card border-grey border-lighten-3 m-0">
                                <div class="card-header no-border">
                                    <div class="card-title text-xs-center">
                                        <div class="p-1"><img src="<?php echo base_url(); ?>assets/images/logo/logoprep.png" alt="branding logo" width="120" height="120"></div>
                                    </div>
                                </div>
                                <div class="card-body collapse in">
                                    <div class="card-block">
                                        <?php
                                        $attributes = array('class' => 'login-form', 'id' => 'myform', 'role' => 'form');
                                        echo form_open("auth/login", $attributes);
                                        ?>    


                                        <?php if (isset($message)) { ?>
                                            <div class="alert alert-danger alert-dismissible fade in" role="alert">
                                                <button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">×</span>
                                                </button>
                                            <?php echo $message; ?>
                                            </div>
                                        <?php } ?>                                        

                                        <?php if (isset($status)) { ?>
                                            <div class="alert alert-warning alert-dismissible fade in" role="alert">
                                                <button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">×</span>
                                                </button>
                                                <?php echo $status; ?>
                                            </div>
                                        
                                        <?php } ?>
                                        <fieldset>
                                        <h4 class="default" align="center">Efetue o login.</h4>
                                        </fieldset>

                                        <fieldset class="form-group position-relative has-icon-left mb-0">
                                            <input type="text" class="form-control form-control-lg input-lg" id="user-name" name="identity" placeholder="Identidade" required>
                                            <div class="form-control-position">
                                                <i class="icon-head"></i>
                                            </div>
                                        </fieldset>
                                        <div>&nbsp;</div>
                                        <fieldset class="form-group position-relative has-icon-left">
                                            <input type="password" class="form-control form-control-lg input-lg" id="user-password" name="password" placeholder="Senha" required>
                                            <div class="form-control-position">
                                                <i class="icon-key3"></i>
                                            </div>
                                        </fieldset>

                                        <button type="submit" class="btn btn-success btn-lg btn-block"><i class="icon-unlock2"></i> Entrar</button>
                                <?php echo form_close(); ?>
                                    </div>
                                </div>
                                <div class="card-footer">
                                    <div class="">
                                        <p class="float-sm-left text-xs-center m-0">Sistema de Apoio ao Planejamento</p>
                                        <p class="float-sm-left text-xs-center m-0">&copy; COTER 2019 - Todos os Direitos Reservados</p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </section>

                </div>
            </div>
        </div>