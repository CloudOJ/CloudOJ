
{{ content() }}

<div class="page-header">
    <h1>{{this.i18n.user_signup_title}}</h1>
</div>

    {{ form('user/register') }}
        <fieldset>
            <div class="control-group">
                <div class="row">
                    <div class="col-xs-12">
                        <div class="controls">
                            <p>{{ form.render('username', ['class': 'form-control']) }}</p>
                        </div>
                    </div>
                </div>
            </div>

            <div class="control-group">
                <div class="row">
                    <div class="col-xs-12">
                        <div class="controls">
                            <p>{{ form.render('email', ['class': 'form-control']) }}</p>
                        </div>
                    </div>
                </div>
            </div>

            <div class="control-group">
                <div class="row">
                    <div class="col-xs-12">
                        <div class="controls">
                            <p>{{ form.render('password', ['class': 'form-control']) }}</p>
                        </div>
                    </div>
                </div>
            </div>

            <div class="control-group">
                <div class="row">
                    <div class="col-xs-12">
                        <div class="controls">
                            <p>{{ form.render('repeatPassword', ['class': 'form-control']) }}</p>
                        </div>
                    </div>
                </div>
            </div>

            <div class="form-actions">
                <div class="row">
                    <div class="col-xs-12 col-md-10 col-md-offset-1">
                        {{ submit_button(this.i18n.user_signup_title, 'class': 'btn btn-primary btn-block') }}
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-xs-12">
                    <p class="help-block">By signing up, you accept terms of use and privacy policy.</p>
                    <small>Your password won't be encrypted while transfering to the server unless SNGOJ supports HTTPS, but will be safely encrypted in the database. Take notice!</small>
                </div>
            </div>
        </fieldset>
    {{ endform() }}
