// @generated
//  This file was automatically generated and should not be edited.

import Apollo
import Foundation

public final class MediaEditorQuery: GraphQLQuery {
  /// The raw GraphQL definition of this operation.
  public let operationDefinition: String =
    """
    query MediaEditor($id: Int!) {
      Media(id: $id) {
        __typename
        type
        volumes
        chapters
        episodes
        mediaListEntry {
          __typename
          id
          notes
          score
          repeat
          status
          private
          priority
          progress
          updatedAt
          customLists
          progressVolumes
          hiddenFromStatusLists
          startedAt {
            __typename
            day
            year
            month
          }
          completedAt {
            __typename
            day
            year
            month
          }
        }
      }
    }
    """

  public let operationName: String = "MediaEditor"

  public var id: Int

  public init(id: Int) {
    self.id = id
  }

  public var variables: GraphQLMap? {
    return ["id": id]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes: [String] = ["Query"]

    public static var selections: [GraphQLSelection] {
      return [
        GraphQLField("Media", arguments: ["id": GraphQLVariable("id")], type: .object(Medium.selections)),
      ]
    }

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public init(media: Medium? = nil) {
      self.init(unsafeResultMap: ["__typename": "Query", "Media": media.flatMap { (value: Medium) -> ResultMap in value.resultMap }])
    }

    /// Media query
    public var media: Medium? {
      get {
        return (resultMap["Media"] as? ResultMap).flatMap { Medium(unsafeResultMap: $0) }
      }
      set {
        resultMap.updateValue(newValue?.resultMap, forKey: "Media")
      }
    }

    public struct Medium: GraphQLSelectionSet {
      public static let possibleTypes: [String] = ["Media"]

      public static var selections: [GraphQLSelection] {
        return [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("type", type: .scalar(MediaType.self)),
          GraphQLField("volumes", type: .scalar(Int.self)),
          GraphQLField("chapters", type: .scalar(Int.self)),
          GraphQLField("episodes", type: .scalar(Int.self)),
          GraphQLField("mediaListEntry", type: .object(MediaListEntry.selections)),
        ]
      }

      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public init(type: MediaType? = nil, volumes: Int? = nil, chapters: Int? = nil, episodes: Int? = nil, mediaListEntry: MediaListEntry? = nil) {
        self.init(unsafeResultMap: ["__typename": "Media", "type": type, "volumes": volumes, "chapters": chapters, "episodes": episodes, "mediaListEntry": mediaListEntry.flatMap { (value: MediaListEntry) -> ResultMap in value.resultMap }])
      }

      public var __typename: String {
        get {
          return resultMap["__typename"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "__typename")
        }
      }

      /// The type of the media; anime or manga
      public var type: MediaType? {
        get {
          return resultMap["type"] as? MediaType
        }
        set {
          resultMap.updateValue(newValue, forKey: "type")
        }
      }

      /// The amount of volumes the manga has when complete
      public var volumes: Int? {
        get {
          return resultMap["volumes"] as? Int
        }
        set {
          resultMap.updateValue(newValue, forKey: "volumes")
        }
      }

      /// The amount of chapters the manga has when complete
      public var chapters: Int? {
        get {
          return resultMap["chapters"] as? Int
        }
        set {
          resultMap.updateValue(newValue, forKey: "chapters")
        }
      }

      /// The amount of episodes the anime has when complete
      public var episodes: Int? {
        get {
          return resultMap["episodes"] as? Int
        }
        set {
          resultMap.updateValue(newValue, forKey: "episodes")
        }
      }

      /// The authenticated user's media list entry for the media
      public var mediaListEntry: MediaListEntry? {
        get {
          return (resultMap["mediaListEntry"] as? ResultMap).flatMap { MediaListEntry(unsafeResultMap: $0) }
        }
        set {
          resultMap.updateValue(newValue?.resultMap, forKey: "mediaListEntry")
        }
      }

      public struct MediaListEntry: GraphQLSelectionSet {
        public static let possibleTypes: [String] = ["MediaList"]

        public static var selections: [GraphQLSelection] {
          return [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("id", type: .nonNull(.scalar(Int.self))),
            GraphQLField("notes", type: .scalar(String.self)),
            GraphQLField("score", type: .scalar(Double.self)),
            GraphQLField("repeat", type: .scalar(Int.self)),
            GraphQLField("status", type: .scalar(MediaListStatus.self)),
            GraphQLField("private", type: .scalar(Bool.self)),
            GraphQLField("priority", type: .scalar(Int.self)),
            GraphQLField("progress", type: .scalar(Int.self)),
            GraphQLField("updatedAt", type: .scalar(Int.self)),
            GraphQLField("customLists", type: .scalar(Json.self)),
            GraphQLField("progressVolumes", type: .scalar(Int.self)),
            GraphQLField("hiddenFromStatusLists", type: .scalar(Bool.self)),
            GraphQLField("startedAt", type: .object(StartedAt.selections)),
            GraphQLField("completedAt", type: .object(CompletedAt.selections)),
          ]
        }

        public private(set) var resultMap: ResultMap

        public init(unsafeResultMap: ResultMap) {
          self.resultMap = unsafeResultMap
        }

        public init(id: Int, notes: String? = nil, score: Double? = nil, `repeat`: Int? = nil, status: MediaListStatus? = nil, `private`: Bool? = nil, priority: Int? = nil, progress: Int? = nil, updatedAt: Int? = nil, customLists: Json? = nil, progressVolumes: Int? = nil, hiddenFromStatusLists: Bool? = nil, startedAt: StartedAt? = nil, completedAt: CompletedAt? = nil) {
          self.init(unsafeResultMap: ["__typename": "MediaList", "id": id, "notes": notes, "score": score, "repeat": `repeat`, "status": status, "private": `private`, "priority": priority, "progress": progress, "updatedAt": updatedAt, "customLists": customLists, "progressVolumes": progressVolumes, "hiddenFromStatusLists": hiddenFromStatusLists, "startedAt": startedAt.flatMap { (value: StartedAt) -> ResultMap in value.resultMap }, "completedAt": completedAt.flatMap { (value: CompletedAt) -> ResultMap in value.resultMap }])
        }

        public var __typename: String {
          get {
            return resultMap["__typename"]! as! String
          }
          set {
            resultMap.updateValue(newValue, forKey: "__typename")
          }
        }

        /// The id of the list entry
        public var id: Int {
          get {
            return resultMap["id"]! as! Int
          }
          set {
            resultMap.updateValue(newValue, forKey: "id")
          }
        }

        /// Text notes
        public var notes: String? {
          get {
            return resultMap["notes"] as? String
          }
          set {
            resultMap.updateValue(newValue, forKey: "notes")
          }
        }

        /// The score of the entry
        public var score: Double? {
          get {
            return resultMap["score"] as? Double
          }
          set {
            resultMap.updateValue(newValue, forKey: "score")
          }
        }

        /// The amount of times the user has rewatched/read the media
        public var `repeat`: Int? {
          get {
            return resultMap["repeat"] as? Int
          }
          set {
            resultMap.updateValue(newValue, forKey: "repeat")
          }
        }

        /// The watching/reading status
        public var status: MediaListStatus? {
          get {
            return resultMap["status"] as? MediaListStatus
          }
          set {
            resultMap.updateValue(newValue, forKey: "status")
          }
        }

        /// If the entry should only be visible to authenticated user
        public var `private`: Bool? {
          get {
            return resultMap["private"] as? Bool
          }
          set {
            resultMap.updateValue(newValue, forKey: "private")
          }
        }

        /// Priority of planning
        public var priority: Int? {
          get {
            return resultMap["priority"] as? Int
          }
          set {
            resultMap.updateValue(newValue, forKey: "priority")
          }
        }

        /// The amount of episodes/chapters consumed by the user
        public var progress: Int? {
          get {
            return resultMap["progress"] as? Int
          }
          set {
            resultMap.updateValue(newValue, forKey: "progress")
          }
        }

        /// When the entry data was last updated
        public var updatedAt: Int? {
          get {
            return resultMap["updatedAt"] as? Int
          }
          set {
            resultMap.updateValue(newValue, forKey: "updatedAt")
          }
        }

        /// Map of booleans for which custom lists the entry are in
        public var customLists: Json? {
          get {
            return resultMap["customLists"] as? Json
          }
          set {
            resultMap.updateValue(newValue, forKey: "customLists")
          }
        }

        /// The amount of volumes read by the user
        public var progressVolumes: Int? {
          get {
            return resultMap["progressVolumes"] as? Int
          }
          set {
            resultMap.updateValue(newValue, forKey: "progressVolumes")
          }
        }

        /// If the entry shown be hidden from non-custom lists
        public var hiddenFromStatusLists: Bool? {
          get {
            return resultMap["hiddenFromStatusLists"] as? Bool
          }
          set {
            resultMap.updateValue(newValue, forKey: "hiddenFromStatusLists")
          }
        }

        /// When the entry was started by the user
        public var startedAt: StartedAt? {
          get {
            return (resultMap["startedAt"] as? ResultMap).flatMap { StartedAt(unsafeResultMap: $0) }
          }
          set {
            resultMap.updateValue(newValue?.resultMap, forKey: "startedAt")
          }
        }

        /// When the entry was completed by the user
        public var completedAt: CompletedAt? {
          get {
            return (resultMap["completedAt"] as? ResultMap).flatMap { CompletedAt(unsafeResultMap: $0) }
          }
          set {
            resultMap.updateValue(newValue?.resultMap, forKey: "completedAt")
          }
        }

        public struct StartedAt: GraphQLSelectionSet {
          public static let possibleTypes: [String] = ["FuzzyDate"]

          public static var selections: [GraphQLSelection] {
            return [
              GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
              GraphQLField("day", type: .scalar(Int.self)),
              GraphQLField("year", type: .scalar(Int.self)),
              GraphQLField("month", type: .scalar(Int.self)),
            ]
          }

          public private(set) var resultMap: ResultMap

          public init(unsafeResultMap: ResultMap) {
            self.resultMap = unsafeResultMap
          }

          public init(day: Int? = nil, year: Int? = nil, month: Int? = nil) {
            self.init(unsafeResultMap: ["__typename": "FuzzyDate", "day": day, "year": year, "month": month])
          }

          public var __typename: String {
            get {
              return resultMap["__typename"]! as! String
            }
            set {
              resultMap.updateValue(newValue, forKey: "__typename")
            }
          }

          /// Numeric Day (24)
          public var day: Int? {
            get {
              return resultMap["day"] as? Int
            }
            set {
              resultMap.updateValue(newValue, forKey: "day")
            }
          }

          /// Numeric Year (2017)
          public var year: Int? {
            get {
              return resultMap["year"] as? Int
            }
            set {
              resultMap.updateValue(newValue, forKey: "year")
            }
          }

          /// Numeric Month (3)
          public var month: Int? {
            get {
              return resultMap["month"] as? Int
            }
            set {
              resultMap.updateValue(newValue, forKey: "month")
            }
          }
        }

        public struct CompletedAt: GraphQLSelectionSet {
          public static let possibleTypes: [String] = ["FuzzyDate"]

          public static var selections: [GraphQLSelection] {
            return [
              GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
              GraphQLField("day", type: .scalar(Int.self)),
              GraphQLField("year", type: .scalar(Int.self)),
              GraphQLField("month", type: .scalar(Int.self)),
            ]
          }

          public private(set) var resultMap: ResultMap

          public init(unsafeResultMap: ResultMap) {
            self.resultMap = unsafeResultMap
          }

          public init(day: Int? = nil, year: Int? = nil, month: Int? = nil) {
            self.init(unsafeResultMap: ["__typename": "FuzzyDate", "day": day, "year": year, "month": month])
          }

          public var __typename: String {
            get {
              return resultMap["__typename"]! as! String
            }
            set {
              resultMap.updateValue(newValue, forKey: "__typename")
            }
          }

          /// Numeric Day (24)
          public var day: Int? {
            get {
              return resultMap["day"] as? Int
            }
            set {
              resultMap.updateValue(newValue, forKey: "day")
            }
          }

          /// Numeric Year (2017)
          public var year: Int? {
            get {
              return resultMap["year"] as? Int
            }
            set {
              resultMap.updateValue(newValue, forKey: "year")
            }
          }

          /// Numeric Month (3)
          public var month: Int? {
            get {
              return resultMap["month"] as? Int
            }
            set {
              resultMap.updateValue(newValue, forKey: "month")
            }
          }
        }
      }
    }
  }
}
