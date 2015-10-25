class hipchat::repo {
  
  case $osfamily {
    'Debian': {
      
      apt::source { 'hipchat':
			  location          => 'http://downloads.hipchat.com/linux/apt',
			  release           => 'stable',
			  repos             => 'main',
			  include           => { 'src' => false },
			}
			
			apt::key { 'hipchat':
			  id     => '69F57C04EA38EEE7A47E9BCCAAD4AA21729B5780',
			  source => 'https://www.hipchat.com/keys/hipchat-linux.key',
			}
			
    }
    
  }
  
}
