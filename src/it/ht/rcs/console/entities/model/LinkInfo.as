/**
 * This is a generated sub-class of _LinkInfo.as and is intended for behavior
 * customization.  This class is only generated when there is no file already present
 * at its target location.  Thus custom behavior that you add here will survive regeneration
 * of the super-class.
 *
 * NOTE: Do not manually modify the RemoteClass mapping unless
 * your server representation of this class has changed and you've
 * updated your ActionScriptGeneration,RemoteClass annotation on the
 * corresponding entity
 **/

package it.ht.rcs.console.entities.model
{

	import com.adobe.fiber.core.model_internal;

	public class LinkInfo extends _Super_LinkInfo
	{
		/**
		 * DO NOT MODIFY THIS STATIC INITIALIZER - IT IS NECESSARY
		 * FOR PROPERLY SETTING UP THE REMOTE CLASS ALIAS FOR THIS CLASS
		 *
		 **/

		/**
		 * Calling this static function will initialize RemoteClass aliases
		 * for this value object as well as all of the value objects corresponding
		 * to entities associated to this value object's entity.
		 */
		public static function _initRemoteClassAlias():void
		{
			_Super_LinkInfo.model_internal::initRemoteClassAliasSingle(it.ht.rcs.console.entities.model.LinkInfo);
			_Super_LinkInfo.model_internal::initRemoteClassAliasAllRelated();
		}

		public function LinkInfo(data:Object=null)
		{
			if (data)
			{
				if (data.skype)
					this.skype=data.skype;
				if (data.facebook)
					this.facebook=data.facebook;
				if (data.phone)
					this.phone=data.phone;
				if (data.mail)
					this.mail=data.mail;
				if (data.url)
					this.url=data.url;
				if (data.money)
					this.money=data.money;
				if (data.gmail)
					this.gmail=data.gmail;
				if (data.yahoo)
					this.yahoo=data.yahoo;
				if (data.adium)
					this.adium=data.adium;
				if (data.bbm)
					this.bbm=data.bbm;
				if (data.whatsapp)
					this.whatsapp=data.whatsapp;
				if (data.gtalk)
					this.gtalk=data.gtalk;
				if (data.line)
					this.line=data.line;
				if (data.msn)
					this.msn=data.msn;
				if (data.telegram)
					this.telegram=data.telegram;
				if (data.twitter)
					this.twitter=data.twitter;
				if (data.viber)
					this.viber=data.viber;
				if (data.wechat)
					this.wechat=data.wechat;
				if (data.url)
					this.url=data.url;
			}
		}


		public function getPlainList():Array
		{
			var info:Array=new Array
			var i:int;
			var item:Array

			//adium
			if (this.adium && this.adium.length)
			{
				for (i=0; i < this.adium.length; i++)
				{
					item=this.adium.getItemAt(i).toString().split(",");
					info=info.concat(item)
				}
        info.push("adium")
			}
			//bbm
			if (this.bbm && this.bbm.length)
			{
				for (i=0; i < this.bbm.length; i++)
				{
					item=this.bbm.getItemAt(i).toString().split(",");
					info=info.concat(item)
				}
        info.push("bbm")
			}
			//facebook
			if (this.facebook && this.facebook.length)
			{
				for (i=0; i < this.facebook.length; i++)
				{
					item=this.facebook.getItemAt(i).toString().split(",");
					info=info.concat(item)
				}
        info.push("facebook")
			}
			//gmail
			if (this.gmail && this.gmail.length)
			{
				for (i=0; i < this.gmail.length; i++)
				{
					item=this.gmail.getItemAt(i).toString().split(",")
					info=info.concat(item);
				}
        info.push("gmail")
			}
			//gtalk
			if (this.gtalk && this.gtalk.length)
			{
				for (i=0; i < this.gtalk.length; i++)
				{
					item=this.gtalk.getItemAt(i).toString().split(",");
					info=info.concat(item)
				}
        info.push("gtalk")

			}
			//line
			if (this.line && this.line.length)
			{
				for (i=0; i < this.line.length; i++)
				{
					item=this.line.getItemAt(i).toString().split(",");
					info=info.concat(item)
				}
        info.push("line")
			}
			//mail
			if (this.mail && this.mail.length)
			{
				for (i=0; i < this.mail.length; i++)
				{
					item=this.mail.getItemAt(i).toString().split(",");
					info=info.concat(item)
				}
        info.push("mail")
			}
			//money
			if (this.money && this.money.length)
			{
				for (i=0; i < this.money.length; i++)
				{
					item=this.money.getItemAt(i).toString().split(",");
					info=info.concat(item)
				}
        info.push("money")
			}
			//msn
			if (this.msn && this.msn.length)
			{
				for (i=0; i < this.msn.length; i++)
				{
					item=this.msn.getItemAt(i).toString().split(",");
					info=info.concat(item)
				}
        info.push("msn")
			}
			//phone
			if (this.phone && this.phone.length)
			{
				for (i=0; i < this.phone.length; i++)
				{
					item=this.phone.getItemAt(i).toString().split(",");
					info=info.concat(item)
				}
        info.push("phone")
			}
			//skype
			if (this.skype && this.skype.length)
			{
				for (i=0; i < this.skype.length; i++)
				{
					item=this.skype.getItemAt(i).toString().split(",");
					info=info.concat(item)
				}
        info.push("skype")
			}
			//telegram
			if (this.telegram && this.telegram.length)
			{
				for (i=0; i < this.telegram.length; i++)
				{
					item=this.telegram.getItemAt(i).toString().split(",");
					info=info.concat(item)
				}
        info.push("telegram")
			}
			//twitter
			if (this.twitter && this.twitter.length)
			{
				for (i=0; i < this.twitter.length; i++)
				{
					item=this.twitter.getItemAt(i).toString().split(",");
					info=info.concat(item)
				}
        info.push("twitter")
			}
			//url
			if (this.url && this.url.length)
			{
				for (i=0; i < this.url.length; i++)
				{
					item=this.url.getItemAt(i).toString().split(",");
					info=info.concat(item)
				}
        info.push("url")
			}
			//viber
			if (this.viber && this.viber.length)
			{
				for (i=0; i < this.viber.length; i++)
				{
					item=this.viber.getItemAt(i).toString().split(",");
					info=info.concat(item)
				}
        info.push("viber")
			}
			//wechat
			if (this.wechat && this.wechat.length)
			{
				for (i=0; i < this.wechat.length; i++)
				{
					item=this.wechat.getItemAt(i).toString().split(",");
					info=info.concat(item)
				}
        info.push("wechat")
			}
			//whatsapp
			if (this.whatsapp && this.whatsapp.length)
			{
				for (i=0; i < this.whatsapp.length; i++)
				{
					item=this.whatsapp.getItemAt(i).toString().split(",");
					info=info.concat(item)
				}
        info.push("whatsapp")
			}
			//yahoo
			if (this.yahoo && this.yahoo.length)
			{
				for (i=0; i < this.yahoo.length; i++)
				{
					item=this.yahoo.getItemAt(i).toString().split(",");
					info=info.concat(item)
				}
        info.push("yahoo")
			}
			return info;
		}

		model_internal static function initRemoteClassAliasSingleChild():void
		{
			_Super_LinkInfo.model_internal::initRemoteClassAliasSingle(it.ht.rcs.console.entities.model.LinkInfo);
		}

		{
			_Super_LinkInfo.model_internal::initRemoteClassAliasSingle(it.ht.rcs.console.entities.model.LinkInfo);
		}
	/**
	 * END OF DO NOT MODIFY SECTION
	 *
	 **/
	}

}
