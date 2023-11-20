<%--
  Created by IntelliJ IDEA.
  User: hamsm
  Date: 2023-11-20
  Time: 오전 11:14
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!DOCTYPE html>
<html lang="ko">

<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, user-scalable=no">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="color-scheme" content="light only"/>
    <meta name="supported-color-schemes" content="light"/>
    <title>네이버 : 회원가입</title>
    <link rel="stylesheet" type="text/css" href="/realname.min.css">
    <link rel="stylesheet" type="text/css" href="/realname_dark.min.css"
          media="(prefers-color-scheme:dark)">


</head>

<body>
<div class="container">
    <div class="inner">
        <h1 class="logo_naver">
            <a href="http://naver.com" class="link">
                <span class="blind">네이버</span>
            </a>
        </h1>
        <div class="content">
            <form id="join_form" method="get" action="/result.jsp" class="form">
<%--                <input type="hidden" id="token_sjoin" name="token_sjoin" value="zHfDb0ha6PMdShC3">--%>
<%--                <input type="hidden" id="nid_kb2" name="nid_kb2" value="">--%>
<%--                <input type="hidden" id="joinMode" name="joinMode" value="joinIdentity">--%>
<%--                <input type="hidden" id="encPswd" name="encPswd" value="">--%>
<%--                <input type="hidden" id="encKey" name="encKey" value="">--%>
<%--                <input type="hidden" id="telecom" name="telecom" value="">--%>
<%--                <input type="hidden" id="birthday" name="birthday" value="">--%>


                <div class="form_content">
                    <div class="form_section">

                        <div class="join_toggle" id="divToggle">
                            <input type="checkbox" id="join_toggle" checked>
                            <label for="join_toggle">실명 인증된 아이디로 가입</label>
                        </div>

                        <div class="form_list">
                            <div class="form_item user" id="divId">
                                <input type="text" id="id" name="id" placeholder="아이디" class="input" value=""
                                       maxlength="20" autocapitalize="off"/>


                            </div>
                            <div class="form_item lock password" id="divPasswd">
                                <input type="password" id="pswd1" name="pswd1" placeholder="비밀번호" class="input" value=""
                                       maxlength="20" autocomplete="new-password"/>
                                <div class="password_info">
                                    <em class="how_secure" id="secureLevel"></em>
                                    <button type="button" class="btn_show hide">
                                        <span class="blind">비밀번호 보기</span>
                                    </button>
                                </div>
                            </div>
                            <div class="form_item email" id="divEmail">
                                <span class="placeholder_prefix">[선택]</span>
                                <input type="email" id="email" name="email" placeholder="[선택] 비밀번호 분실 시 확인용 이메일"
                                       class="input" value="" maxlength="100"/>
                            </div>
                        </div>
                        <div class="error_text item_style" id="idMsg" style="display: none"></div>
                        <div class="error_text item_style" id="pswd1Msg" style="display: none"></div>
                        <div class="error_text item_style" id="emailMsg" style="display: none"></div>

                        <div class="form_list">

                            <div class="form_item user" id="divName">
                                <input type="text" id="name" name="name" placeholder="이름" class="input" value=""
                                       maxlength="40"/>
                            </div>
                            <div class="form_item calendar" id="divBirthday">
                                <input type="text" id="birthdayInput" name="birthdayInput" placeholder="생년월일 8자리" class="input" value=""
                                       maxlength="10"/>
                            </div>

                            <div class="form_item telecom" id="divTelecom">

                                <span class="placeholder">통신사 선택</span>
                                <div class="select_box" id="selTelecom">
                                    <select id="Telecom" name="telecomMenu" class="select">
                                        <option value="none">
                                            통신사 선택
                                        </option>
                                        <option value="SKT">
                                            SKT
                                        </option>
                                        <option value="KT">
                                            KT
                                        </option>
                                        <option value="LG U+">
                                            LG U+
                                        </option>
                                    </select>
                                </div>
                            </div>
                            <div class="form_item adult" id="divIdentityGender">
                                <ul class="adult_list" id="listIdentityGender">
                                    <li class="radio_item">
                                        <input type="radio" id="identityGender1" name="identityGender" value="M"
                                               class="blind">
                                        <label for="identityGender1">남자</label>
                                    </li>
                                    <li class="radio_item">
                                        <input type="radio" id="identityGender2" name="identityGender" value="F"
                                               class="blind">
                                        <label for="identityGender2">여자</label>
                                    </li>
                                </ul>
                                <ul class="adult_list" id="listForeigner">
                                    <li class="radio_item">
                                        <input type="radio" id="foreigner1" name="foreigner" value="K" checked
                                               class="blind">
                                        <label for="foreigner1">내국인</label>
                                    </li>
                                    <li class="radio_item">
                                        <input type="radio" id="foreigner2" name="foreigner" value="F" class="blind">
                                        <label for="foreigner2">외국인</label>
                                    </li>
                                </ul>
                            </div>

                            <div class="form_item globe" id="divNationNo">
                                <div class="select_box" id="selNationNo">
                                    <select id="nationNo" name="nationNo" class="select">
                                        <option value="82">
                                            대한민국 +82
                                        </option>
                                    </select>
                                </div>
                            </div>

                            <div class="form_item phone" id="divPhoneNo">
                                <input type="tel" id="phoneNo" name="phoneNo" placeholder="휴대전화번호" class="input"
                                       value="" maxlength="16"/>
                            </div>
                        </div>
                        <div class="error_text item_style" id="nameMsg" style="display: none"></div>
                        <div class="error_text item_style" id="birthdayMsg" style="display: none"></div>
                        <div class="error_text item_style" id="telecomMsg" style="display: none"></div>
                        <div class="error_text item_style" id="genderMsg" style="display: none"></div>
                        <div class="error_text item_style" id="foreignerMsg" style="display: none"></div>
                        <div class="error_text item_style" id="phoneNoMsg" style="display: none"></div>


                        <div class="error_text item_style" id="termAgreeMsg" style="display: none"></div>

                        <div class="form_list" id="divAuthNo6" style="display: none">
                            <div class="form_item lock">
                                <input type="tel" id="authNo6" name="authNo6" maxlength="6" placeholder="인증번호 6자리 입력"
                                       class="input" value=""/>
                                <button type="button" class="btn_retry" id="resendIdentity">재요청</button>
                            </div>
                        </div>
                        <div class="form_list" id="divAuthNo4" style="display: none">
                            <div class="form_item lock">
                                <input type="tel" id="authNo4" name="authNo4" maxlength="4" placeholder="인증번호 4자리 입력"
                                       class="input" value=""/>
                                <button type="button" class="btn_retry" id="resendOccupancy">재요청</button>
                            </div>
                        </div>
                        <div class="notice_text item_style" id="authNoMsg" style="display: none"></div>

                    </div>
                </div>

                <div class="btn_submit_wrap" id="divBtnJoin">
                    <button type="submit" class="btn_submit" id="btnJoin">가입하기</button>
                </div>
            </form>
        </div>
    </div>
</div>

</body>
</html>
