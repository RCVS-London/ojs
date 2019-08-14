{**
 * templates/frontend/components/footer.tpl
 *
 * Copyright (c) 2018 Vitaliy Bezsheiko, MD
 *}
</div> {* end of the site-content wraper *}
{if $requestedPage|escape != "article"}
    <footer class="site-footer">
        <div class="container">
            <div class="row">
                <div class="col-md-6">
                    <div class="col span_1_of_3first">
                        <div style="width: auto; margin-left: 0px; padding: 5px; border: 5px solid #335d5a; background-color: #5cb8b2; text-align:center; font-weight: bold; font-size:18pt">ISSN: 2396-9776</div>
                        <p>© {'Y'|date} RCVS Knowledge<br>© Authors retain the copyright of their article and retain publishing rights.<a href="https://veterinaryevidence.org/index.php/ve/about/submissions#onlineSubmissions"> Find out more</a></p>
                        <p><b>Veterinary Evidence</b> and <b>EBVM Network</b> are <a href="http://knowledge.rcvs.org.uk/home/" target="_blank">RCVS Knowledge</a> initiatives. For more information please contact us at <a href="mailto:editor@veterinaryevidence.org" target="_blank">editor@veterinaryevidence.org</a>.<br><br>
                                Royal College of Veterinary Surgeons Trust (trading as <a href="http://knowledge.rcvs.org.uk/home/" target="_blank">RCVS Knowledge</a>) is a registered Charity No. 230886. Registered as a Company limited by guarantee in England and Wales No. 598443.<br><br><b>Registered Office:</b><br>Belgravia House<br>62-64 Horseferry Road<br>London SW1P 2AF</font></p>
                        <hr class="style-two"></hr>
                        <!-- Social Media -->
                        <a href="https://twitter.com/RCVSKnowledge" target="_blank"><img class="img-sm" src="{$baseUrl}/public/site/images/general/footer/twitterVE.png" alt="Twitter" /></a>
                        <a href="https://www.facebook.com/RCVSKnowledge/" target="_blank"><img class="img-sm" src="{$baseUrl}/public/site/images/general/footer/facebookVE.png" alt="Facebook" /></a>
                        <a href="{$baseUrl}/index.php/ve/gateway/plugin/WebFeedGatewayPlugin/atom" target="_blank"><img class="img-sm" src="{$baseUrl}/public/site/images/general/footer/rssVE.png" alt="RSS" /></a>
                    </div>
                </div>
                <div class="col-md-6">
                    <div id="sidebar-phones">
                        <div class="block" >
                            <ul>
                                <li class="footer-content-cc"><a href="{$baseUrl}/index.php/ve/pages/view/terms-of-use" >Terms of Use</a></li>
                                <li class="footer-content-oa"><a href="{$baseUrl}/index.php/ve/pages/view/privacy-policy" >Privacy Policy</a></li>
                                <li class="footer-content-oa"><a href="{$baseUrl}/index.php/ve/pages/view/cookie-declaration" >Cookie Declaration</a></li>
                            </ul>

                            <ul>
                                <h4>Information:</h4>
                                <li class="footer-content-cc"><a href="{$baseUrl}/index.php/ve/information/authors" >For Authors</a></li>
                                <li class="footer-content-cc"><a href="{$baseUrl}/index.php/ve/information/readers" >For Readers</a></li>
                                <li class="footer-content-cc"><a href="{$baseUrl}/index.php/ve/information/librarians" >For Librarians</a></li>
                            </ul>

                            <ul>
                                <h4>Useful links:</h4>
                                <li class="footer-content-cc"><a href="https://veterinaryevidence.org/index.php/ve/pages/view/faq">FAQ</a></li>
                                <li class="footer-content-cc"><a href="https://veterinaryevidence.org/index.php/ve/pages/view/ebvm-why-does-it-matter">EBVM - Why does it matter?</a></li>
                                <li class="footer-content-cc"><a href="http://creativecommons.org/" target="_blank">Creative Commons license</a></li>
                                <li class="footer-content-oa"><a href="http://open-access.net/DE-EN/information-on-open-access/" target="_blank">Open Access</a></li>
                            </ul>
                        </div>
                    </div>
                </div>
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
{/if}
{load_script context="frontend" scripts=$scripts}
{call_hook name="Templates::Common::Footer::PageFooter"}
</body>
</html>
