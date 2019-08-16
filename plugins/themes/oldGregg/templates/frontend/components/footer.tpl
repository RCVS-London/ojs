{**
 * templates/frontend/components/footer.tpl
 *
 * Copyright (c) 2018 Vitaliy Bezsheiko, MD
 *}
</div> {* end of the site-content wraper *}
<footer class="site-footer">
    <div class="container">
        <div class="row">
            <div class="col-md-6">
                <div id="issn">ISSN: 2396-9776</div>
                <p>
                    © {'Y'|date} RCVS Knowledge<br>
                    © Authors retain the copyright of their article and retain publishing rights.<a href="https://veterinaryevidence.org/index.php/ve/about/submissions#onlineSubmissions"> Find out more</a>
                </p>
                <p>
                    <b>Veterinary Evidence</b> and <b>EBVM Network</b> are <a href="http://knowledge.rcvs.org.uk/home/" target="_blank">RCVS Knowledge</a> initiatives. For more information please contact us at <a href="mailto:editor@veterinaryevidence.org" target="_blank">editor@veterinaryevidence.org</a>.<br><br>
                    Royal College of Veterinary Surgeons Trust (trading as <a href="http://knowledge.rcvs.org.uk/home/" target="_blank">RCVS Knowledge</a>) is a registered Charity No. 230886. Registered as a Company limited by guarantee in England and Wales No. 598443.<br><br><b>Registered Office:</b><br>Belgravia House<br>62-64 Horseferry Road<br>London SW1P 2AF</font>
                </p>
                <hr class="style-two" />
                <!-- Social Media -->
                <a style="text-decoration: none; margin-right: 5px;" href="https://twitter.com/RCVSKnowledge" target="_blank">
                    <img width="48" class="img-sm" src="{$baseUrl}/plugins/themes/oldGregg/images/twitter.svg" alt="Twitter" />
                </a>
                <a style="text-decoration: none; margin-right: 5px;" href="https://www.facebook.com/RCVSKnowledge/" target="_blank">
                    <img width="48" class="img-sm" src="{$baseUrl}/plugins/themes/oldGregg/images/facebook.svg" alt="Facebook" />
                </a>
                <a style="text-decoration: none" href="{$baseUrl}/index.php/ve/gateway/plugin/WebFeedGatewayPlugin/atom" target="_blank">
                    <img width="48"  class="img-sm" src="{$baseUrl}/plugins/themes/oldGregg/images/rss.svg" alt="RSS" />
                </a>
            </div>
            {if $pageFooter}
                <div class="col-md-6">
                    <div class="pkp_footer_content">
                        {$pageFooter}
                    </div>
                </div>
            {/if}
        </div>
    </div>
    <div class="council-acknowledgement">
        <div class="col2 span_rcvs-txt">
            <h4>Made possible through a project grant from the RCVS Council.</h4>
        </div>
        <div class="col2 span_rcvs-img">
            <a href="http://www.rcvs.org.uk" target="_blank"><img src="{$baseUrl}/public/site/images/general/footer/RCVS-footer.png" alt="RCVS" width="154" height="31" /></a>
        </div>
    </div>
</footer>
{load_script context="frontend"}
{call_hook name="Templates::Common::Footer::PageFooter"}
</body>
</html>
