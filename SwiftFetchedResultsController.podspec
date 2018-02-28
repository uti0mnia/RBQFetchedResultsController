Pod::Spec.new do |s|
  s.name         = "SwiftFetchedResultsController"
  s.version      = "5.0.3"
  s.summary      = "Swift drop-in replacement for NSFetchedResultsController backed by Realm"
  s.description  = <<-DESC
                    The FetchedResultsController (FRC) is a Swift replacement for NSFetchedResultsController when used in conjunction with the ChangeLogger class. The controller and delegate follow the same paradigm as NSFetchedResultsController, and allow the developer to monitor changes of a Realm Swift Object subclass.

                    FetchedResultsController supports tableview sections and implements a drop-in replacement delegate to pass the changes to the tableview for section and row animations.
                   DESC

  s.homepage     = "https://github.com/uti0mnia/RBQFetchedResultsController"
  s.license      = { :type => "MIT", :file => "LICENSE" }
  s.author       = { "Uti0mnia" => "uti0mnia@gmail.com" }
  s.social_media_url   = "http://twitter.com/uti0mnia"
  s.platform     = :ios, "9.0"
  s.source       = { :git => "https://github.com/uti0mnia/RBQFetchedResultsController", :tag => "v#{s.version}", :submodules => true }
  s.source_files  = [
    "RBQFetchedResultsController/Source/Swift/*.{h,swift}",
    "RBQFetchedResultsController/Source/RBQSafeRealmObject/*.{swift}"
  ]
  s.requires_arc = true
  s.dependency "RealmSwift", ">=2.1.1"
  s.dependency "RBQFetchedResultsController", ">=#{s.version}"
  s.dependency "SafeRealmObject"
end
