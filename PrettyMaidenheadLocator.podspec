Pod::Spec.new do |s|
    s.name         = "PrettyMaidenheadLocator"
    s.version      = "0.1"
    s.summary      = "A tiny framework built to work with Maidenhead(QTH) Locator."

    s.description = <<-DESC
                    PrettyMaidenheadLocator is a tiny framework built to convert coordinates into QTH Locators.
                    DESC

    s.homepage     = "https://github.com/nab0y4enko/PrettyMaidenheadLocator"
    s.license      = "MIT"

    s.author              = { "Oleksii Naboichenko" => "nab0y4enko@gmail.com" }
    s.social_media_url    = "https://twitter.com/nab0y4enko"

    s.source          = { :git => "https://github.com/nab0y4enko/PrettyMaidenheadLocator.git", :tag => "#{s.version}" }

    s.source_files    = "Sources/**/*.swift"

    s.frameworks      = "Foundation", "CoreLocation"

    s.requires_arc    = true
end
