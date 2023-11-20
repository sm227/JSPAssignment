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
            <form id="join_form" method="post" action="/user2/join/end" class="form">
                <input type="hidden" id="token_sjoin" name="token_sjoin" value="zHfDb0ha6PMdShC3">
                <input type="hidden" id="nid_kb2" name="nid_kb2" value="">
                <input type="hidden" id="joinMode" name="joinMode" value="joinIdentity">
                <input type="hidden" id="encPswd" name="encPswd" value="">
                <input type="hidden" id="encKey" name="encKey" value="">
                <input type="hidden" id="telecom" name="telecom" value="">
                <input type="hidden" id="birthday" name="birthday" value="">


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

                                <div class="id_naver">@naver.com</div>
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
                                <input type="text" id="birthdayInput" placeholder="생년월일 8자리" class="input" value=""
                                       maxlength="10"/>
                            </div>

                            <div class="form_item telecom" id="divTelecom">

                                <span class="placeholder">통신사 선택</span>
                                <div class="select_box" id="selTelecom">
                                    <select id="Telecom" name="nationNo" class="select">
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

                                <ul role="menu" id="telecom_menu" class="telecom_menu">
                                    <li role="presentation" class="item">
                                        <button type="button" role="menuitem" class="button" id="btnTelecom1">
                                            <span class="text">SKT</span>
                                        </button>
                                    </li>
                                    <li role="presentation" class="item">
                                        <button type="button" role="menuitem" class="button" id="btnTelecom2">
                                            <span class="text">SKT 알뜰폰</span>
                                        </button>
                                    </li>
                                    <li role="presentation" class="item">
                                        <button type="button" role="menuitem" class="button" id="btnTelecom3">
                                            <span class="text">KT</span>
                                        </button>
                                    </li>
                                    <li role="presentation" class="item">
                                        <button type="button" role="menuitem" class="button" id="btnTelecom4">
                                            <span class="text">KT 알뜰폰</span>
                                        </button>
                                    </li>
                                    <li role="presentation" class="item">
                                        <button type="button" role="menuitem" class="button" id="btnTelecom5">
                                            <span class="text">LG U+</span>
                                        </button>
                                    </li>
                                    <li role="presentation" class="item">
                                        <button type="button" role="menuitem" class="button" id="btnTelecom6">
                                            <span class="text">LG U+ 알뜰폰</span>
                                        </button>
                                    </li>
                                </ul>
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

                            <div class="form_item gender" id="divGender">
                                <ul class="gender_list" id="listGender">
                                    <li class="radio_item">
                                        <input type="radio" id="gender1" name="gender" value="M" class="blind">
                                        <label for="gender1">남자</label>
                                    </li>
                                    <li class="radio_item">
                                        <input type="radio" id="gender2" name="gender" value="F" class="blind">
                                        <label for="gender2">여자</label>
                                    </li>
                                    <li class="radio_item">
                                        <input type="radio" id="gender3" name="gender" value="O" class="blind">
                                        <label for="gender3">선택안함</label>
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

<div class="dimlayer" style="display: none;" id="divPopup">
    <div class="dimbg"></div>
    <div class="popup_content">
        <div class="id_popup">
            <strong class="title">본인인증 아이디가 이미 존재합니다.<br> 기존 아이디를 이용하세요.</strong>
            <ul class="id_list" id="listPopup">
            </ul>
            <div class="btn_area">
                <button type="button" class="btn_close" id="btnClose">닫기</button>
                <button type="button" class="btn_login" id="btnLogin">로그인 하기</button>
            </div>
        </div>
    </div>
</div>

<div class="dimlayer help_modal_style" style="display: none;">
    <div class="dimbg"></div>
    <div class="help_modal_wrap">
        <div class="help_modal">
            <div class="handle_area">
                <div class="handle"></div>
            </div>
            <strong class="modal_title">인증문자가 도착하지 않는다면?</strong>
            <ul class="help_list">
                <li class="item on">
                    <button type="button" class="btn_expand" aria-expanded="true">정확한 정보를 입력하셨나요?</button>
                    <div class="desc">
                        <div>입력하신 정보가 정확한지 확인해 주세요.</div>
                        <div>정확한 정보를 입력 하셨는데도 문자가 수신되지 않는 경우 휴대전화에서 1588 번호로 온 문자가 스팸 차단 설정되어 있는지 확인하신 뒤 다시 시도해 보세요.
                        </div>
                        <div>휴대전화에서 스팸 차단이 설정되어 있지 않더라도 통신사에서 1588 번호를 자동으로 차단할 수 있습니다. 사용 중인 통신사에 문의하여 인증번호 문자가 올바르게
                            수신되는지 확인해 주세요.
                        </div>
                    </div>
                </li>
                <li class="item">
                    <button type="button" class="btn_expand" aria-expanded="false">최근에 가입한 적이 있나요?</button>
                    <div class="desc">
                        <div>네이버는 휴대전화 번호 인증을 통해 일정 기간 내에 정해진 개수의 아이디만 가입이 가능합니다.</div>
                        <div>기존에 가입하신 아이디를 이용해 주세요.</div>
                        <br>
                        <div>가입하셨던 아이디가 기억나지 않으시다면 '아이디 찾기'에서 회원 정보에 등록한 휴대전화 및 본인 확인 이메일 주소 등으로 가입한 아이디 리스트와 개수를 확인해
                            주세요.
                        </div>
                        <a href="https://nid.naver.com/user2/help/idInquiry.nhn?menu=idinquiry" class="link">아이디 찾기
                            바로가기</a>
                    </div>
                </li>
                <li class="item">
                    <button type="button" class="btn_expand" aria-expanded="false">가입한 아이디가 3개 이상인가요?</button>
                    <div class="desc">
                        <div>네이버는 최대 3개의 아이디만 가입할 수 있습니다. (개인·단체 아이디 포함) 기존에 가입하신 아이디를 이용해 주세요.</div>
                        <br>
                        <div>가입하셨던 아이디가 기억나지 않으시다면 '아이디 찾기'에서 회원 정보에 등록한 휴대전화 및 본인 확인 이메일 주소 등으로 가입한 아이디 리스트와 개수를 확인해
                            주세요.
                        </div>
                        <a href="https://nid.naver.com/user2/help/idInquiry.nhn?menu=idinquiry" class="link">아이디 찾기
                            바로가기</a><br><br>
                        <div>아이디 찾기에서 확인된 아이디가 2개 이하라면 현재 사용 중인 휴대전화 번호의 이전 사용자가 이미 해당 번호로 가입 가능한 갯수 이상의 아이디를 생성해 둔 상태일
                            수 있습니다. 이 경우 해당 번호를 현재 사용 중임을 확인할 수 있는 휴대전화 가입 증빙서류를 제출해야 합니다. 증빙서류는 가까운 통신사에 방문하거나 통신사
                            홈페이지에서 발급할 수 있습니다.
                        </div>
                        <a href="https://help.naver.com/alias/membership/p.membership/p.membership_500.naver"
                           class="link">휴대전화 가입 증빙서류 제출하기</a>
                    </div>
                </li>
            </ul>
            <button type="button" class="btn_close" id="btnHelpClose">
                <span class="blind">닫기</span>
            </button>
        </div>
    </div>
</div>

<script type="text/javascript" src="/inc/common/js/lua.js?r=20220411"></script>
<script type="text/javascript" src="/inc/common/js/jquery.min.js"></script>
<script type="text/javascript" src="/inc/common/js/bvsd.1.3.9.js"></script>
</body>
</html>
