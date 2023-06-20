import Factory

public protocol AccountLoading {
    func load() -> [Account]
}

public class Account {
    public init() {}
}

// Public Factory
extension Container {
    public var accountLoading: Factory<AccountLoading?> { self { nil } }
}
