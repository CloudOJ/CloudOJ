<hr>
<footer>
    <div class="row">
        <div class="col-lg-8">
            <ul class="list-inline">
                <li>{{ link_to('help/view/about', this.i18n.footer_about) }}</li>
                <li>{{ link_to('help/view/feedback',
                                      this.i18n.footer_feedback) }}</li>
                <li>{{ link_to('help/view/term', this.i18n.footer_term) }}</li>
                <li>{{ link_to('help', this.i18n.footer_help) }}</li>

                {% if this.i18n.locale == "zh-cn" %}
                    <li><a href="?locale=en-us">English</a></li>
                {% endif %}
                {% if this.i18n.locale == "en-us" %}
                    <li><a href="?locale=zh-cn">中文</a></li>
                {% endif %}
            </ul>
            <p>
                {% if this.i18n.locale == "zh-cn" %}
                {{this.config.site.name}} 由 CloudOJ v2 强力驱动。
                {% endif %}
                {% if this.i18n.locale == "en-us" %}
                Powered by CloudOJ v2.
                {% endif %}
            </p>
        </div>
        <div class="col-lg-4 visible-lg">
            <dl class="dl-horizontal">
                {% if this.i18n.locale == "zh-cn" %}
                    <dt>服务器时间</dt><dd><?=date('Y-m-d H:i:s',time());?></dd>
                    <dt>页面响应时间</dt><dd>{{this.exetime}}秒</dd>
                    <dt>备案信息</dt><dd>{{partial("partials/extra/record")}}</dd>
                {% endif %}
                {% if this.i18n.locale == "en-us" %}
                    <dt>Server Time </dt><dd><?=date('Y-m-d H:i:s',time());?></dd>
                    <dt>Page Processed in </dt><dd>{{this.exetime}}s</dd>
                    <dt>Record</dt><dd>{{partial("partials/extra/record")}}</dd>
                {% endif %}
            </dl>
        </div>
    </div>
</footer>
