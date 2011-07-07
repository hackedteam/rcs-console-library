package it.ht.rcs.console
{
  public class I18NImpl implements II18N
  {
    public function getString(string:String):String
    {
      return string;
      // return ResourceManager.getInstance().getString('localized_main', string);
    }
  }
}