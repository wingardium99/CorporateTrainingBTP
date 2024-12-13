@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Currency Value Help'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
define view entity za1218_currency_vh 
as select from I_Currency
{
    key Currency,
    _Text[1: Language = $session.system_language].CurrencyName as CurrencyName,
    /* Associations */
    _Text
}
