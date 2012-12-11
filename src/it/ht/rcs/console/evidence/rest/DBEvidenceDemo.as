package it.ht.rcs.console.evidence.rest
{
	import it.ht.rcs.console.agent.rest.DBAgentDemo;
	import it.ht.rcs.console.evidence.model.Evidence;
	import it.ht.rcs.console.evidence.model.EvidenceData;
	import it.ht.rcs.console.evidence.model.EvidenceDataAddress;
	import it.ht.rcs.console.evidence.model.Filter;
	import it.ht.rcs.console.evidence.model.TypeCount;
	import it.ht.rcs.console.target.rest.DBTargetDemo;
	
	import mx.collections.ArrayCollection;
	import mx.rpc.events.ResultEvent;
	import mx.utils.ObjectUtil;
  

	public class DBEvidenceDemo implements IDBEvidence
	{

		private var filter:Object;
    
    private const SECONDS_PER_DAY:uint = (60 * 60 * 24)

		public static var evidence:ArrayCollection=new ArrayCollection([
      
      // John Doe (SwordFish) a1 desktop, a2 mobile
			new Evidence({_id: 'e01', aid: 'a1', blo: false, da: 1336135607, dr: 1336135607, _mid: 0, note: '', rel: 0, type: 'password', data: new EvidenceData({user: 'pippo', pass: 'alpha', program: 'Mail', service: 'Gmail'})}),
      
      //passwords
      new Evidence({_id: 'e02', aid: 'a1', blo: false, da: 1354546434, dr: 1354546722, _mid: 0, note: '', rel: 0, type: 'password', data: new EvidenceData({user: 'jimmypage1337', pass: 'FrancoFranchi99', program: 'Firefox/Thunderbird', service: 'https://accounts.google.com'})}),
      new Evidence({_id: 'e03', aid: 'a1', blo: false, da: 1354546434, dr: 1354546722, _mid: 0, note: '', rel: 0, type: 'password', data: new EvidenceData({user: 'jimmypage1337@gmail.com', pass: 'FrancoFranchi99', program: 'Firefox/Thunderbird', service: 'http://www.facebook.com'})}),
      new Evidence({_id: 'e04', aid: 'a1', blo: false, da: 1354546434, dr: 1354546722, _mid: 0, note: '', rel: 0, type: 'password', data: new EvidenceData({user: 'jimmypage8000', pass: 'FrancoFranchi99', program: 'Firefox/Thunderbird', service: 'https://twitter.com'})}),
      new Evidence({_id: 'e05', aid: 'a1', blo: false, da: 1354546434, dr: 1354546722, _mid: 0, note: '', rel: 0, type: 'password', data: new EvidenceData({user: 'root', pass: 'admin', program: 'Firefox/Thunderbird', service: 'http://172.16.42.100'})}),
      //positions
      new Evidence({_id: 'e06', aid: 'a1', blo: false, da: 1354546439, dr: 1354546723, _mid: 0, note: '', rel: 0, type: 'position', 
        data: new EvidenceData({type:'WIFI',latitude:45.4763469 ,longitude:9.1913053, accuracy: 51.0, 
          address: new EvidenceDataAddress({text:"Via della Moscova, 13, 20121 Milan, Italy"}), 
          wifi:[{mac:"98:FC:11:7A:82:AF", sig:-69, bssid:"PC-DOMENICO2_Network"}, {mac:"00:25:53:90:A8:76", sig:-76, "bssid":"TISCALI"}, {mac:"E8:40:40:80:61:B8", sig:-58, bssid:"ht-guest-wifi"}, {mac:"58:6D:8F:A0:50:71", sig:-37, bssid:"CiscoE4200"}, {mac:"00:24:89:20:3F:C5", sig:-76, bssid:"Vodafone-11116924"}, {mac:"30:85:A9:AA:CD:50", sig:-84, bssid:"ht-guest-wifi"}, {mac:"00:23:F8:30:A3:BC", sig:-71, bssid:"RSSM"}, {mac:"D4:D1:84:EA:90:07", sig:-85, bssid:"Telecom-82481153"}]})}),
      new Evidence({_id: 'e07', aid: 'a1', blo: false, da: 1354546439, dr: 1354546723, _mid: 0, note: '', rel: 0, type: 'position', 
        data: new EvidenceData({type:'WIFI',latitude:45.4763469 ,longitude:9.1913053, accuracy: 49.0, 
          address: new EvidenceDataAddress({text:"Via della Moscova, 13, 20121 Milan, Italy"}), 
          wifi:[{mac:"98:FC:11:7A:82:AF", sig:-69, bssid:"PC-DOMENICO2_Network"}, {mac:"00:25:53:90:A8:76", sig:-76, "bssid":"TISCALI"}, {mac:"E8:40:40:80:61:B8", sig:-58, bssid:"ht-guest-wifi"}, {mac:"58:6D:8F:A0:50:71", sig:-37, bssid:"CiscoE4200"}, {mac:"00:24:89:20:3F:C5", sig:-76, bssid:"Vodafone-11116924"}, {mac:"30:85:A9:AA:CD:50", sig:-84, bssid:"ht-guest-wifi"}, {mac:"00:23:F8:30:A3:BC", sig:-71, bssid:"RSSM"}, {mac:"D4:D1:84:EA:90:07", sig:-85, bssid:"Telecom-82481153"}]})}),
      //keylog
      new Evidence({_id: 'e08', aid: 'a1', blo: false, da: 1354546434, dr: 1354546722, _mid: 0, note: '', rel: 0, type: 'keylog', data: new EvidenceData({program: 'Skype.exe', window: 'Skype™ - Add a contact', content:'alberto.ornaghi'})}),
      new Evidence({_id: 'e09', aid: 'a1', blo: false, da: 1354546434, dr: 1354546722, _mid: 0, note: '', rel: 0, type: 'keylog', data: new EvidenceData({program: 'TrueCrypt.exe', window: 'Enter password for C:\Users\RCS Demo\Desktop\secret_op.tc', content:'secret123TP!'})}),
      new Evidence({_id: 'e10', aid: 'a1', blo: false, da: 1354546434, dr: 1354546722, _mid: 0, note: '', rel: 0, type: 'keylog', data: new EvidenceData({program: 'TrueCrypt.exe', window: 'TrueCrypt', content:'↵'})}),
      new Evidence({_id: 'e11', aid: 'a1', blo: false, da: 1354546434, dr: 1354546722, _mid: 0, note: '', rel: 0, type: 'keylog', data: new EvidenceData({program: 'explorer.exe', window: 'Program Manager', content:'␡'})}),
      //device
      new Evidence({_id: 'e12', aid: 'a1', blo: false, da: 1354546434, dr: 1354546722, _mid: 0, note: '', rel: 0, type: 'device', data: new EvidenceData({content:'<br>Processor: 4 x Intel(R) Core(TM) i5-3317U CPU @ 1.70GHz<br>Memory: 1920MB free / 3654MB total (47% used)<br>Disk: 70211MB free / 101828MB total<br>Battery: AC Connected - 55%<br><br>OS Version: Windows 7 Ultimate (64bit)<br>Registered to: Microsoft (Microsoft) {}<br>Locale settings: it_IT (UTC +01:00)<br>Time delta: +00:00:00<br><br>User: RCS Demo {ADMIN}<br>SID: S-1-5-21-1932372789-2859129667-2835794646-1000<br><br>Drive List:<br>C:\ &quot;OS&quot; (disk)<br><br><br>Application List:<br>Intel(R) Rapid Start Technology   (1.0.0.1022)<br>Adobe Flash Player 11 ActiveX   (11.3.300.265)<br>Adobe Flash Player 11 Plugin   (11.5.502.110)<br>Advanced Audio FX Engine   (1.12.05)<br>BlackBerry Desktop Software 6.1   (6.1.0.36)<br>Kaspersky Internet Security 2013   (13.0.1.4190)<br>Mozilla Firefox 16.0.2 (x86 en-US)   (16.0.2)<br>Mozilla Maintenance Service   (16.0.2)<br>Microsoft Office Professional Plus 2010   (14.0.4763.1000)<br>TrueCrypt   (7.1a)<br>Windows Live Essentials   (15.4.3508.1109)<br>Dell DataSafe Local Backup   (9.4.67)<br>Intel(R) USB 3.0 eXtensible Host Controller Driver   (1.0.5.235)<br>Java 7 Update 9   (7.0.90)<br>Windows Live Mesh ActiveX Control for Remote Connections   (15.4.5722.2)<br>Intel(R) Rapid Storage Technology   (11.1.0.1006)<br>Absolute Reminder   (2.0.0.19)<br>Intel(R) Management Engine Components   (8.0.10.1464)<br>Microsoft Visual C++ 2008 Redistributable - x86 9.0.30729   (9.0.30729)<br>Microsoft Silverlight   (4.0.50401.0)<br>Intel(R) WiDi   (3.0.12.0)<br>Microsoft Office   (14.0.6120.5004)<br>Microsoft Visual C++ 2008 Redistributable - x86 9.0.30729.17   (9.0.30729)<br>Dell Digital Delivery   (2.1.1002.0)<br>Dell DataSafe Local Backup - Support Software   (9.4.67)<br>Adobe Reader X MUI   (10.0.0)<br>Skype™ 6.0   (6.0.126)<br>Microsoft SQL Server 2005 Compact Edition [ENU]   (3.1.0000)<br>Microsoft Visual C++ 2010  x86 Redistributable - 10.0.40219   (10.0.40219)<br>Intel(R) Processor Graphics   (8.15.10.2761)<br>Realtek High Definition Audio Driver   (6.0.1.6662)<br>Intel(R) Control Center   (1.2.1.1007)<br>Microsoft Visual C++ 2008 Redistributable - x86 9.0.21022   (9.0.21022)<br><br><br>Application List:<br>Dell Support Center   (3.1.5907.16)<br>Microsoft .NET Framework 4 Client Profile   (4.0.30319)<br>Microsoft .NET Framework 4 Extended   (4.0.30319)<br>Microsoft Visual C++ 2010  x64 Redistributable - 10.0.40219   (10.0.40219)<br>Intel(R) Wireless Display<br>Intel(R) PROSet/Wireless Software for Bluetooth(R) Technology   (2.1.1.0153)<br>Intel(R) PROSet/Wireless for Bluetooth(R) + High Speed   (15.1.0.0096)<br>Intel® PROSet/Wireless WiFi Software   (15.01.1000.0927)<br>Cypress TrackPad   (2.5.0.43)<br>Microsoft Visual C++ 2008 Redistributable - x64 9.0.30729.17   (9.0.30729)<br>Quickset64   (11.1.27)<br>Dell Edoc Viewer   (1.0.0)<br>Intel(R) Smart Connect Technology 3.0 x64   (3.0.30.1526)<br>'})}),
     
      //file - check for download !!!
      new Evidence({_id: 'e13', aid: 'a1', blo: false, da: 1354546434, dr: 1354546722, _mid: 0, note: '', rel: 0, type: 'file', data: new EvidenceData({path:'I:\op_nash.doc',type:'capture', size:'101376'})}),
      
      //addressbook
      new Evidence({_id: 'e14', aid: 'a1', blo: false, da: 1354546434, dr: 1354546722, _mid: 0, note: '', rel: 0, type: 'addressbook', data: new EvidenceData({name:'alberto.ornaghi',contact:'', info:'Screen name: Alberto Ornaghi', program:'skype', type:'peer'})}),
      new Evidence({_id: 'e15', aid: 'a1', blo: false, da: 1354546434, dr: 1354546722, _mid: 0, note: '', rel: 0, type: 'addressbook', data: new EvidenceData({name:'quequero_uic',contact:'', info:'Screen name: Quequero', program:'skype', type:'peer'})}),
      new Evidence({_id: 'e16', aid: 'a1', blo: false, da: 1354546434, dr: 1354546722, _mid: 0, note: '', rel: 0, type: 'addressbook', data: new EvidenceData({name:'bmuschitiello.cons.mi',contact:'', info:'Screen name: Bruno', program:'skype', type:'peer'})}),
      new Evidence({_id: 'e17', aid: 'a1', blo: false, da: 1354546434, dr: 1354546722, _mid: 0, note: '', rel: 0, type: 'addressbook', data: new EvidenceData({name:'pangoeye@mailcatch.com',contact:'', info:'Screen name: Mark Klovenberg', program:'gmail', type:'peer'})}),
      new Evidence({_id: 'e18', aid: 'a1', blo: false, da: 1354546434, dr: 1354546722, _mid: 0, note: '', rel: 0, type: 'addressbook', data: new EvidenceData({name:'scissor@mailcatch.com',contact:'', info:'Screen name: Luis Anderson', program:'gmail', type:'peer'})}),
      new Evidence({_id: 'e19', aid: 'a1', blo: false, da: 1354546434, dr: 1354546722, _mid: 0, note: '', rel: 0, type: 'addressbook', data: new EvidenceData({name:'Jimmy Page',contact:'', info:'Facebook page: /pippo.pluto.73345048', program:'facebook', type:'target'})}),
      new Evidence({_id: 'e19', aid: 'a1', blo: false, da: 1354546434, dr: 1354546722, _mid: 0, note: '', rel: 0, type: 'addressbook', data: new EvidenceData({name:'Faber O\'Connell',contact:'', info:'Home address street: Kulim Facebook page: /fabrizio.cornelli', program:'facebook', type:'peer'})}),
      new Evidence({_id: 'e20', aid: 'a1', blo: false, da: 1354546434, dr: 1354546722, _mid: 0, note: '', rel: 0, type: 'addressbook', data: new EvidenceData({name:'Radio Deejay',contact:'', info:'Screen name: radiodeejay', program:'twitter', type:'friend'})}),
      
      //chat
      new Evidence({_id: 'e21', aid: 'a1', blo: false, da: 1354546434, dr: 1354546722, _mid: 0, note: '', rel: 0, type: 'chat', data: new EvidenceData({program: 'Facebook', topic:'', peer:'Alberto Ornaghi', content:'Alberto Ornaghi: <span dir="rtl">لدي بعض المعلومات بالنسبة لك حول ناشفيل</span>', tr:'Alberto Ornaghi: <span dir= "RTL"> to some information for you on Nashville </span>'})}),
      new Evidence({_id: 'e22', aid: 'a1', blo: false, da: 1354546434, dr: 1354546722, _mid: 0, note: '', rel: 0, type: 'chat', data: new EvidenceData({program: 'Facebook', topic:'', peer:'Alberto Ornaghi', content:'Jimmy Page: OK, meet me on Skype', tr:'Jimmy Page: OK, meet me on Skype'})}),
      new Evidence({_id: 'e23', aid: 'a1', blo: false, da: 1354546434, dr: 1354546722, _mid: 0, note: '', rel: 0, type: 'chat', data: new EvidenceData({program: 'Facebook', topic:'', peer:'Alberto Ornaghi', content:'Alberto Ornaghi: <span dir="rtl">بلى</span>', tr:'Alberto Ornaghi: <span dir= "RTL"> </Beli span>'})}),
      new Evidence({_id: 'e24', aid: 'a1', blo: false, da: 1354546434, dr: 1354546722, _mid: 0, note: '', rel: 0, type: 'chat', data: new EvidenceData({program: 'Twitter', topic:'Mon Dec 03 13:54:59 +0000 2012', peer:'Twitter', content:'Alberto Ornaghi: <span dir="rtl">بلى</span>', tr:'JimmyPage8000: Going to Nashville this weekend'})}),
      new Evidence({_id: 'e25', aid: 'a1', blo: false, da: 1354546434, dr: 1354546722, _mid: 0, note: '', rel: 0, type: 'chat', data: new EvidenceData({program: 'SKYPE', topic:'', peer:'alberto.ornaghi proc.test', content:'proc.test: Hi alberto.ornaghi! I’d like to add you on Skype. JimmyPage'})}),
      new Evidence({_id: 'e26', aid: 'a1', blo: false, da: 1354546434, dr: 1354546722, _mid: 0, note: '', rel: 0, type: 'chat', data: new EvidenceData({program: 'SKYPE', topic:'', peer:'alberto.ornaghi proc.test', content:'alberto.ornaghi: eccoti'})}),
      new Evidence({_id: 'e26', aid: 'a1', blo: false, da: 1354546434, dr: 1354546722, _mid: 0, note: '', rel: 0, type: 'chat', data: new EvidenceData({program: 'SKYPE', topic:'', peer:'alberto.ornaghi proc.test', content:'alberto.ornaghi: posted file secret_op.tc to members of this conversation'})}),
      
      //url
      new Evidence({_id: 'e27', aid: 'a1', blo: false, da: 1354546434, dr: 1354546722, _mid: 0, note: '', rel: 0, type: 'url', data: new EvidenceData({url:'http://www.facebook.com/messages/', title:'Messaggi - Mozilla Firefox', program:'Firefox', keywords:''})}),
      new Evidence({_id: 'e28', aid: 'a1', blo: false, da: 1354546434, dr: 1354546722, _mid: 0, note: '', rel: 0, type: 'url', data: new EvidenceData({url:'http://www.facebook.com/messages/alberto.ornaghi', title:'Alberto Ornaghi - Messaggi - Mozilla Firefox', program:'Firefox', keywords:''})}),
      new Evidence({_id: 'e29', aid: 'a1', blo: false, da: 1354546434, dr: 1354546722, _mid: 0, note: '', rel: 0, type: 'url', data: new EvidenceData({url:'http://www.facebook.com/?sk=welcome', title:'Facebook - Mozilla Firefox', program:'Firefox', keywords:''})}),

      //call
      new Evidence({_id: 'e30', aid: 'a1', blo: false, da: 1354546434, dr: 1354546722, _mid: 0, note: '', rel: 0, type: 'call', data: new EvidenceData({peer:'bmuschitiello.cons.mi', program:'Skype', duration:'11.990408163265307', _grid:'50bcb1bf572d6e0d0000009d.mp3'})}),
      new Evidence({_id: 'e31', aid: 'a1', blo: false, da: 1354546434, dr: 1354546722, _mid: 0, note: '', rel: 0, type: 'call', data: new EvidenceData({peer:'alberto.ornaghi', program:'Skype', duration:'49.03451247165534', _grid:'50bcb2ec572d6e0d000000db.mp3'})}),
     
      //screenshot
      new Evidence({_id: 'e32', aid: 'a1', blo: false, da: 1354546434, dr: 1354546722, _mid: 0, note: '', rel: 0, type: 'screenshot', data: new EvidenceData({program:'firefox.exe', window:'Alberto Ornaghi - Messaggi - Mozilla Firefox', _grid:'50bcb444572d6e0d00000140.jpg'})}),
      new Evidence({_id: 'e32', aid: 'a1', blo: false, da: 1354546434, dr: 1354546722, _mid: 0, note: '', rel: 0, type: 'screenshot', data: new EvidenceData({program:'rundll32.exe', window:'Status Log', _grid:'50bcc57e572d6e0d0000016a.jpg'})}),
      new Evidence({_id: 'e33', aid: 'a1', blo: false, da: 1354546434, dr: 1354546722, _mid: 0, note: '', rel: 0, type: 'screenshot', data: new EvidenceData({program:'Rim.Desktop.exe', window:'BlackBerry® Desktop Software', _grid:'50bcc581572d6e0d00000184.jpg'})}),
      new Evidence({_id: 'e34', aid: 'a1', blo: false, da: 1354546434, dr: 1354546722, _mid: 0, note: '', rel: 0, type: 'screenshot', data: new EvidenceData({program:'Skype.exe', window:'Skype', _grid:'50bcc583572d6e0d00000194.jpg'})}),

      //camera
      new Evidence({_id: 'e35', aid: 'a1', blo: false, da: 1354546434, dr: 1354546722, _mid: 0, note: '', rel: 0, type: 'camera', data: new EvidenceData({_grid:'50bcc583572d6e0d0000019b.jpg'})}),
      new Evidence({_id: 'e36', aid: 'a1', blo: false, da: 1354546434, dr: 1354546722, _mid: 0, note: '', rel: 0, type: 'camera', data: new EvidenceData({ _grid:'50bcb013572d6e0d00000008.jpg'})}),
      new Evidence({_id: 'e37', aid: 'a1', blo: false, da: 1354546434, dr: 1354546722, _mid: 0, note: '', rel: 0, type: 'camera', data: new EvidenceData({ _grid:'50bcb01c572d6e0d0000001a.jpg'})}),

     //mouse
      new Evidence({_id: 'e38', aid: 'a1', blo: false, da: 1354546434, dr: 1354546722, _mid: 0, note: '', rel: 0, type: 'mouse', data: new EvidenceData({program:'explorer.exe',window:'FolderView',x:'44',y:'345',resolution:'1366 x 768', _grid:'50bcb01c572d6e0d00000017.jpg'})}),
      new Evidence({_id: 'e39', aid: 'a1', blo: false, da: 1354546434, dr: 1354546722, _mid: 0, note: '', rel: 0, type: 'mouse', data: new EvidenceData({program:'Skype.exe',window:'UNKNOWN',x:'218',y:'268',resolution:'1366 x 768', _grid:'50bcb026572d6e0d0000004f.jpg'})}),
      new Evidence({_id: 'e40', aid: 'a1', blo: false, da: 1354546434, dr: 1354546722, _mid: 0, note: '', rel: 0, type: 'mouse', data: new EvidenceData({program:'Skype.exe',window:'UNKNOWN',x:'322',y:'451',resolution:'1366 x 768', _grid:'50bcb057572d6e0d0000005a.jpg'})}),
      new Evidence({_id: 'e41', aid: 'a1', blo: false, da: 1354546434, dr: 1354546722, _mid: 0, note: '', rel: 0, type: 'mouse', data: new EvidenceData({program:'explorer.exe',window:'Shut down',x:'352',y:'702',resolution:'1366 x 768', _grid:'50bcb39c572d6e0d00000122.jpg'})}),
      new Evidence({_id: 'e41', aid: 'a1', blo: false, da: 1354546434, dr: 1354546722, _mid: 0, note: '', rel: 0, type: 'mouse', data: new EvidenceData({program:'explorer.exe',window:'Running applications',x:'288',y:'752',resolution:'1366 x 768', _grid:'50bcb3d8572d6e0d00000134.jpg'})})
      
      // Alejandro Reade (Swordfish), a3 desktop
     // new Evidence({_id: 'e04', aid: 'a3', blo: false, da: 1336135607, dr: 1336135607, _mid: 0, note: '', rel: 0, type: 'keylog', data: new EvidenceData({program: 'Calc', window: 'Calculator', content: '12000+15000'})}),
     
      
      // Joey Fargo (SwordFish), a4 desktop,a5 desktop, a6 mobile
      //new Evidence({_id: 'e06', aid: 'a4', blo: false, da: 1309354166, dr: 1309354166, _mid: 0, note: '', rel: 0, type: 'clipboard', data: new EvidenceData({program: 'Word', window: 'New Document', content: 'The quick brown fox'})}),
   
      
      // Guido (Blackjack), a7 desktop ,a8 mobile
     // new Evidence({_id: 'e09', aid: 'a7', blo: false, da: 1309354166, dr: 1309354166, _mid: 0, note: '', rel: 0, type: 'clipboard', data: new EvidenceData({program: 'Word', window: 'New Document', content: 'The quick brown fox'})}),
     
      
      // Dmitry Vitaly (All In), a9 mobile
      //new Evidence({_id: 'e12', aid: 'a9', blo: false, da: 1309354166, dr: 1309354166, _mid: 0, note: '', rel: 0, type: 'clipboard', data: new EvidenceData({program: 'Word', window: 'New Document', content: 'The quick brown fox'})}),
     
			])
      
    public static var command:ArrayCollection=new ArrayCollection([
      
      // John Doe (SwordFish) a1 desktop, a2 mobile
      new Evidence({_id: 'c01', aid: 'a1', blo: false, da: 1336135607, dr: 1336135607, _mid: 0, note: '', rel: 0, type: '', data: new EvidenceData({command: 'cmd.exe /c dir c:\\', content: 'Il volume nell\'unita C non ha etichetta. \nNumero di serie del volume: 207B-b349\nDirectory di c:\\ \n17/06/2008 12.25 0 AUTOEXEC.BAT\n17/06/2008/ 12.25 0 CONFIG.SYS\n26/11/2010 16.56 Documents and Settings'})}),
      new Evidence({_id: 'c02', aid: 'a2', blo: true, da: 1309354166, dr: 1309354166, _mid: 0, note: '', rel: 0, type: '',  data: new EvidenceData({command: 'cmd.exe /c dir c:\\', content: 'Il volume nell\'unita C non ha etichetta. \nNumero di serie del volume: 207B-b349\nDirectory di c:\\ \n17/06/2008 12.25 0 AUTOEXEC.BAT\n17/06/2008/ 12.25 0 CONFIG.SYS\n26/11/2010 16.56 Documents and Settings'})}),
      new Evidence({_id: 'c03', aid: 'a2', blo: false, da: 1309354166, dr: 1309354166, _mid: 0, note: '', rel: 0, type: '', data: new EvidenceData({command: 'cmd.exe /c dir c:\\', content: 'Il volume nell\'unita C non ha etichetta. \nNumero di serie del volume: 207B-b349\nDirectory di c:\\ \n17/06/2008 12.25 0 AUTOEXEC.BAT\n17/06/2008/ 12.25 0 CONFIG.SYS\n26/11/2010 16.56 Documents and Settings'})}),
      // Alejandro Reade (Swordfish), a3 desktop
      new Evidence({_id: 'c04', aid: 'a3', blo: false, da: 1336135607, dr: 1336135607, _mid: 0, note: '', rel: 0, type: '', data: new EvidenceData({command: 'cmd.exe /c dir c:\\', content: 'Il volume nell\'unita C non ha etichetta. \nNumero di serie del volume: 207B-b349\nDirectory di c:\\ \n17/06/2008 12.25 0 AUTOEXEC.BAT\n17/06/2008/ 12.25 0 CONFIG.SYS\n26/11/2010 16.56 Documents and Settings'})}),
      new Evidence({_id: 'c05', aid: 'a3', blo: false, da: 1309354166, dr: 1309354166, _mid: 0, note: '', rel: 0, type: '', data: new EvidenceData({command: 'cmd.exe /c dir c:\\', content: 'Il volume nell\'unita C non ha etichetta. \nNumero di serie del volume: 207B-b349\nDirectory di c:\\ \n17/06/2008 12.25 0 AUTOEXEC.BAT\n17/06/2008/ 12.25 0 CONFIG.SYS\n26/11/2010 16.56 Documents and Settings'})}),
      // Joey Fargo (SwordFish), a4 desktop,a5 desktop, a6 mobile
      new Evidence({_id: 'c06', aid: 'a4', blo: false, da: 1309354166, dr: 1309354166, _mid: 0, note: '', rel: 0, type: '', data: new EvidenceData({command: 'cmd.exe /c dir c:\\', content: 'Il volume nell\'unita C non ha etichetta. \nNumero di serie del volume: 207B-b349\nDirectory di c:\\ \n17/06/2008 12.25 0 AUTOEXEC.BAT\n17/06/2008/ 12.25 0 CONFIG.SYS\n26/11/2010 16.56 Documents and Settings'})}),
      new Evidence({_id: 'c07', aid: 'a5', blo: false, da: 1309354166, dr: 1309354166, _mid: 0, note: '', rel: 0, type: '', data: new EvidenceData({command: 'cmd.exe /c dir c:\\', content: 'Il volume nell\'unita C non ha etichetta. \nNumero di serie del volume: 207B-b349\nDirectory di c:\\ \n17/06/2008 12.25 0 AUTOEXEC.BAT\n17/06/2008/ 12.25 0 CONFIG.SYS\n26/11/2010 16.56 Documents and Settings'})}),
      new Evidence({_id: 'c08', aid: 'a6', blo: false, da: 1309354166, dr: 1309354166, _mid: 0, note: '', rel: 0, type: '', data: new EvidenceData({command: 'cmd.exe /c dir c:\\', content: 'Il volume nell\'unita C non ha etichetta. \nNumero di serie del volume: 207B-b349\nDirectory di c:\\ \n17/06/2008 12.25 0 AUTOEXEC.BAT\n17/06/2008/ 12.25 0 CONFIG.SYS\n26/11/2010 16.56 Documents and Settings'})}),
      
      // Guido (Blackjack), a7 desktop ,a8 mobile
      new Evidence({_id: 'c09', aid: 'a7', blo: false, da: 1309354166, dr: 1309354166, _mid: 0, note: '', rel: 0, type: '', data: new EvidenceData({command: 'cmd.exe /c dir c:\\', content: 'Il volume nell\'unita C non ha etichetta. \nNumero di serie del volume: 207B-b349\nDirectory di c:\\ \n17/06/2008 12.25 0 AUTOEXEC.BAT\n17/06/2008/ 12.25 0 CONFIG.SYS\n26/11/2010 16.56 Documents and Settings'})}),
      new Evidence({_id: 'c10', aid: 'a8', blo: false, da: 1309354166, dr: 1309354166, _mid: 0, note: '', rel: 0, type: '', data: new EvidenceData({command: 'cmd.exe /c dir c:\\', content: 'Il volume nell\'unita C non ha etichetta. \nNumero di serie del volume: 207B-b349\nDirectory di c:\\ \n17/06/2008 12.25 0 AUTOEXEC.BAT\n17/06/2008/ 12.25 0 CONFIG.SYS\n26/11/2010 16.56 Documents and Settings'})}),
      new Evidence({_id: 'c11', aid: 'a8', blo: false, da: 1309354166, dr: 1309354166, _mid: 0, note: '', rel: 0, type: '', data: new EvidenceData({command: 'cmd.exe /c dir c:\\', content: 'Il volume nell\'unita C non ha etichetta. \nNumero di serie del volume: 207B-b349\nDirectory di c:\\ \n17/06/2008 12.25 0 AUTOEXEC.BAT\n17/06/2008/ 12.25 0 CONFIG.SYS\n26/11/2010 16.56 Documents and Settings'})}),
      
      // Dmitry Vitaly (All In), a9 mobile
      new Evidence({_id: 'c12', aid: 'a9', blo: false, da: 1309354166, dr: 1309354166, _mid: 0, note: '', rel: 0, type: '', data: new EvidenceData({command: 'cmd.exe /c dir c:\\', content: 'Il volume nell\'unita C non ha etichetta. \nNumero di serie del volume: 207B-b349\nDirectory di c:\\ \n17/06/2008 12.25 0 AUTOEXEC.BAT\n17/06/2008/ 12.25 0 CONFIG.SYS\n26/11/2010 16.56 Documents and Settings'})}),
      new Evidence({_id: 'c13', aid: 'a9', blo: false, da: 1309354166, dr: 1309354166, _mid: 0, note: '', rel: 0, type: '', data: new EvidenceData({command: 'cmd.exe /c dir c:\\', content: 'Il volume nell\'unita C non ha etichetta. \nNumero di serie del volume: 207B-b349\nDirectory di c:\\ \n17/06/2008 12.25 0 AUTOEXEC.BAT\n17/06/2008/ 12.25 0 CONFIG.SYS\n26/11/2010 16.56 Documents and Settings'})}),
      new Evidence({_id: 'c14', aid: 'a9', blo: false, da: 1309354166, dr: 1309354166, _mid: 0, note: '', rel: 0, type: '', data: new EvidenceData({command: 'cmd.exe /c dir c:\\', content: 'Il volume nell\'unita C non ha etichetta. \nNumero di serie del volume: 207B-b349\nDirectory di c:\\ \n17/06/2008 12.25 0 AUTOEXEC.BAT\n17/06/2008/ 12.25 0 CONFIG.SYS\n26/11/2010 16.56 Documents and Settings'})})
    ])
      
    public static var ip:ArrayCollection=new ArrayCollection([
      
      // John Doe (SwordFish) a1 desktop, a2 mobile
      new Evidence({_id: 'c01', aid: 'a1', blo: false, da: 1336135607, dr: 1336135607, _mid: 0, note: '', rel: 0, type: '', data: new EvidenceData({content: '172.16.42.2'})}),
      new Evidence({_id: 'c02', aid: 'a2', blo: true, da: 1309354166, dr: 1309354166, _mid: 0, note: '', rel: 0, type: '',  data: new EvidenceData({content: '172.16.42.2'})}),
      new Evidence({_id: 'c03', aid: 'a2', blo: false, da: 1309354166, dr: 1309354166, _mid: 0, note: '', rel: 0, type: '', data: new EvidenceData({content: '172.16.42.2'})}),
      // Alejandro Reade (Swordfish), a3 desktop
      new Evidence({_id: 'c04', aid: 'a3', blo: false, da: 1336135607, dr: 1336135607, _mid: 0, note: '', rel: 0, type: '', data: new EvidenceData({content: '172.20.20.170'})}),
      new Evidence({_id: 'c05', aid: 'a3', blo: false, da: 1309354166, dr: 1309354166, _mid: 0, note: '', rel: 0, type: '', data: new EvidenceData({content: '172.20.20.170'})}),
      // Joey Fargo (SwordFish), a4 desktop,a5 desktop, a6 mobile
      new Evidence({_id: 'c06', aid: 'a4', blo: false, da: 1309354166, dr: 1309354166, _mid: 0, note: '', rel: 0, type: '', data: new EvidenceData({content: '172.20.20.193'})}),
      new Evidence({_id: 'c07', aid: 'a5', blo: false, da: 1309354166, dr: 1309354166, _mid: 0, note: '', rel: 0, type: '', data: new EvidenceData({content: '172.20.20.193'})}),
      new Evidence({_id: 'c08', aid: 'a6', blo: false, da: 1309354166, dr: 1309354166, _mid: 0, note: '', rel: 0, type: '', data: new EvidenceData({content: '172.20.20.193'})}),
      
      // Guido (Blackjack), a7 desktop ,a8 mobile
      new Evidence({_id: 'c09', aid: 'a7', blo: false, da: 1309354166, dr: 1309354166, _mid: 0, note: '', rel: 0, type: '', data: new EvidenceData({content: '172.20.20.193'})}),
      new Evidence({_id: 'c10', aid: 'a8', blo: false, da: 1309354166, dr: 1309354166, _mid: 0, note: '', rel: 0, type: '', data: new EvidenceData({content: '172.20.20.193'})}),
      new Evidence({_id: 'c11', aid: 'a8', blo: false, da: 1309354166, dr: 1309354166, _mid: 0, note: '', rel: 0, type: '', data: new EvidenceData({content: '172.20.20.193'})}),
      
      // Dmitry Vitaly (All In), a9 mobile
      new Evidence({_id: 'c12', aid: 'a9', blo: false, da: 1309354166, dr: 1309354166, _mid: 0, note: '', rel: 0, type: '', data: new EvidenceData({content: '172.20.20.193'})}),
      new Evidence({_id: 'c13', aid: 'a9', blo: false, da: 1309354166, dr: 1309354166, _mid: 0, note: '', rel: 0, type: '', data: new EvidenceData({content: '172.20.20.193'})}),
      new Evidence({_id: 'c14', aid: 'a9', blo: false, da: 1309354166, dr: 1309354166, _mid: 0, note: '', rel: 0, type: '', data: new EvidenceData({content: '172.20.20.193'})})
    ])
      
		public function all(filter:Object, onResult:Function=null, onFault:Function=null):void
		{
			//trace(ObjectUtil.toString(filter));
      //agent, target, type, date
      this.filter=filter;
			evidence.filterFunction=filterEvidence;
			evidence.refresh()
			if (onResult != null)
				onResult(new ResultEvent('evidence.all', false, true, evidence));
		}

		private function filterEvidence(item:Object):Boolean
		{
      var result:Boolean=true;
      
      for(var criteria:* in filter)
      {
        if(criteria=="target" && !(DBAgentDemo.getTarget(item.aid)==filter.target)) {result=false; break;}
        if(criteria=="agent" && !(item.aid == filter.agent)) {result=false; break;}
        if(criteria=="type" && !isInArray(item.type, filter.type)) {result=false; break;}
        if(criteria=="blo" && !(item.blo==filter.blo[0])) {result=false; break;}
        if(criteria=="rel" && !isInArray(item.rel, filter.rel)) {result=false; break};
        if(criteria=="aid" && !isInArray(item.aid, filter.aid)) {result=false; break;}
        if(criteria=="date" && !isInDateRange(item, filter)) {result=false; break;}
      }
			return result;
      
		}
    
    private function filterCommands(item:Object):Boolean
    {
      var result:Boolean=true;
      
      for(var criteria:* in filter)
      {
        if(criteria=="target" && !(DBAgentDemo.getTarget(item.aid)==filter.target)) {result=false; break;}
        if(criteria=="agent" && !(item.aid == filter.agent)) {result=false; break;}
        if(criteria=="type" && !isInArray(item.type, filter.type)) {result=false; break;}
        if(criteria=="blo" && !(item.blo==filter.blo[0])) {result=false; break;}
        if(criteria=="rel" && !isInArray(item.rel, filter.rel)) {result=false; break};
        if(criteria=="aid" && !isInArray(item.aid, filter.aid)) {result=false; break;}
        if(criteria=="date" && !isInDateRange(item, filter)) {result=false; break;}
      }
      return result;
      
    }
    
    private function filterIps(item:Object):Boolean
    {
      var result:Boolean=true;
      
      for(var criteria:* in filter)
      {
        if(criteria=="target" && !(DBAgentDemo.getTarget(item.aid)==filter.target)) {result=false; break;}
        if(criteria=="agent" && !(item.aid == filter.agent)) {result=false; break;}
        if(criteria=="type" && !isInArray(item.type, filter.type)) {result=false; break;}
        if(criteria=="blo" && !(item.blo==filter.blo[0])) {result=false; break;}
        if(criteria=="rel" && !isInArray(item.rel, filter.rel)) {result=false; break};
        if(criteria=="aid" && !isInArray(item.aid, filter.aid)) {result=false; break;}
        if(criteria=="date" && !isInDateRange(item, filter)) {result=false; break;}
      }
      return result;
      
    }
    
    private function isInArray(value:*, arr:Array):Boolean
    {
      var result:Boolean;
      for(var i:int=0;i<arr.length;i++)
      {
        if(value==arr[i])
        {
          result=true;
          break;
        }
      }
      return result;
    }
    private function isInDateRange(item:Object, filter:Object):Boolean
    {
      var result:Boolean=false;
      if(filter.date)
      {
        // TODO - How to get the correct actual time?
        var now:uint=uint(new Date().time/1000) ;
        var from:uint;
        var to:Number;
       
          if(filter.from==0 && filter.to==0) {result=true; return result};
          //last 24 hours - default value
          if(!filter.from && !filter.to)
          { 
            from=now-SECONDS_PER_DAY;
            if(item[filter.date]>=from){result=true; return result};
          }
          //from only
          if(filter.from && !filter.to)
          {
            if(item[filter.date]>=filter.from){result=true; return result};
          }
          //to only
          if(!filter.from && filter.to)
          {
            if(item[filter.date]<=filter.to){result=true; return result};
          }
          //from and to
          if(filter.from && filter.to)
          {
            if(item[filter.date]<=filter.to && item[filter.date]>=filter.from){result=true; return result};
          }
      }
      return result;
    }

		public function update(evidence:Evidence, property:Object, target:String, onResult:Function=null, onFault:Function=null):void
		{
		}

		public function destroy(evidence:Evidence, target:String, onResult:Function=null, onFault:Function=null):void
		{
		}

    public function destroy_all(params: Object, onResult:Function=null, onFault:Function=null):void
    {
    }
    
		public function agent_status(params:Object, onResult:Function=null, onFault:Function=null):void
		{
		}

		public function sync_start(params:Object, onResult:Function=null, onFault:Function=null):void
		{
		}

		public function sync_stop(params:Object, onResult:Function=null, onFault:Function=null):void
		{
		}

		public function info(filter:Object, onResult:Function=null, onFault:Function=null):void
		{
		}

		public function commands(filter:Object, onResult:Function=null, onFault:Function=null):void
		{
     
      this.filter=filter;
      command.filterFunction=filterCommands;
      command.refresh()
      if (onResult != null)
        onResult(new ResultEvent('evidence.commands', false, true, command));

		}
    
    public function ips(filter:Object, onResult:Function=null, onFault:Function=null):void
    {
      this.filter=filter;
      ip.filterFunction=filterIps;
      ip.refresh()
      if (onResult != null)
        onResult(new ResultEvent('evidence.ips', false, true, ip));
    }

		public function total(filter:Object, onResult:Function=null, onFault:Function=null):void
		{
      trace("total called")
      trace(ObjectUtil.toString(filter));
      
      var result:ArrayCollection=new ArrayCollection()
      var counts:Object=new Object()
      
      var addressbook:TypeCount=new TypeCount();
      addressbook.type="addressbook";
      counts["addressbook"]=addressbook;
      
      var application:TypeCount=new TypeCount();
      application.type="application";
      counts["application"]=application;
      
      var calendar:TypeCount=new TypeCount();
      calendar.type="calendar";
      counts["calendar"]=calendar;
      
      var call:TypeCount=new TypeCount();
      call.type="call";
      counts["call"]=call;
      
      var camera:TypeCount=new TypeCount();
      camera.type="camera";
      counts["camera"]=camera;
      
      var chat:TypeCount=new TypeCount();
      chat.type="chat";
      counts["chat"]=chat;
      
      var clipboard:TypeCount=new TypeCount();
      clipboard.type="clipboard";
      counts["clipboard"]=clipboard;
      
      var device:TypeCount=new TypeCount();
      device.type="device";
      counts["device"]=device;
      
      var file:TypeCount=new TypeCount();
      file.type="file";
      counts["file"]=file;
      
      var keylog:TypeCount=new TypeCount();
      keylog.type="keylog";
      counts["keylog"]=keylog;
      
      var message:TypeCount=new TypeCount();
      message.type="message";
      counts["message"]=message;
      
      var mic:TypeCount=new TypeCount();
      mic.type="mic";
      counts["mic"]=mic;
      
      var mouse:TypeCount=new TypeCount();
      mouse.type="mouse";
      counts["mouse"]=mouse;
      
      var password:TypeCount=new TypeCount();
      password.type="password";
      counts["password"]=password;
      
      var position:TypeCount=new TypeCount();
      position.type="position";
      counts["position"]=position;
      
      var print:TypeCount=new TypeCount();
      print.type="print";
      counts["print"]=print;
      
      var screenshot:TypeCount=new TypeCount();
      screenshot.type="screenshot";
      counts["screenshot"]=screenshot;
      
      var url:TypeCount=new TypeCount();
      url.type="url";
      counts["url"]=url;
      
      var total:TypeCount=new TypeCount();
      total.type="total";
      counts["total"]=total;
      
      result.source=[addressbook,application,calendar,call,camera,chat,clipboard,device,file,keylog,message,mic,mouse,password,position,print,screenshot,url, total];
      
      var i:uint;
      var currentEvidence:Evidence;
      var currentTypeCount:TypeCount;
      //get current agent stuff
      if(filter.agent)
      {
        for(i=0;i<evidence.source.length;i++)
        {
          currentEvidence=evidence.source[i] as Evidence;
          if(currentEvidence.aid==filter.agent)
          {
            counts[currentEvidence.type].count++
            total.count++
          }
        }
      }
      //get current target stuff
      else
      {
        for(i=0;i<evidence.source.length;i++)
        {
          currentEvidence=evidence.source[i] as Evidence;
          if(DBAgentDemo.getTarget(currentEvidence.aid)==filter.target)
          {
            counts[currentEvidence.type].count++
            total.count++
          }
        }
      }
      

      if (onResult != null)
        onResult(new ResultEvent('evidence.total', false, true, result));
		}

		public function filesystem(targetId:String, agentId:String, filter:String, onResult:Function=null, onFault:Function=null):void
		{
		}

		public function show(id:String, target:String, onResult:Function=null, onFault:Function=null):void
		{
		}
    
    public function filter_all(onResult:Function=null, onFault:Function=null):void
    {
    }
    
    public function filter_destroy(filter:Filter, onResult:Function=null, onFault:Function=null):void
    {
    }
    
    public function filter_create(filter:Object, onResult:Function=null, onFault:Function=null):void
    {
    }

	}

}