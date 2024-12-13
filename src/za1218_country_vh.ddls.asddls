@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Country Value Help'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
define view entity za1218_country_vh 
as select from I_Country
{
    key Country,
    _Text[1: Language = $session.system_language].CountryName as CountryName, // 국가별 텍스트 , 사용자 로그온 한 언어 적용
    /* Associations */
    _Text
}
