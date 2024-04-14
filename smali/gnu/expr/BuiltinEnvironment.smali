.class public Lgnu/expr/BuiltinEnvironment;
.super Lgnu/mapping/Environment;
.source "BuiltinEnvironment.java"


# static fields
.field static final instance:Lgnu/expr/BuiltinEnvironment;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 11
    new-instance v0, Lgnu/expr/BuiltinEnvironment;

    invoke-direct {v0}, Lgnu/expr/BuiltinEnvironment;-><init>()V

    sput-object v0, Lgnu/expr/BuiltinEnvironment;->instance:Lgnu/expr/BuiltinEnvironment;

    const-string v1, "language-builtins"

    .line 12
    invoke-virtual {v0, v1}, Lgnu/expr/BuiltinEnvironment;->setName(Ljava/lang/String;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Lgnu/mapping/Environment;-><init>()V

    return-void
.end method

.method public static getInstance()Lgnu/expr/BuiltinEnvironment;
    .locals 1

    .line 15
    sget-object v0, Lgnu/expr/BuiltinEnvironment;->instance:Lgnu/expr/BuiltinEnvironment;

    return-object v0
.end method


# virtual methods
.method public addLocation(Lgnu/mapping/Symbol;Ljava/lang/Object;Lgnu/mapping/Location;)Lgnu/mapping/NamedLocation;
    .locals 0

    .line 59
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1}, Ljava/lang/RuntimeException;-><init>()V

    throw p1
.end method

.method public define(Lgnu/mapping/Symbol;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 39
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1}, Ljava/lang/RuntimeException;-><init>()V

    throw p1
.end method

.method public enumerateAllLocations()Lgnu/mapping/LocationEnumeration;
    .locals 1

    .line 49
    invoke-virtual {p0}, Lgnu/expr/BuiltinEnvironment;->getLangEnvironment()Lgnu/mapping/Environment;

    move-result-object v0

    invoke-virtual {v0}, Lgnu/mapping/Environment;->enumerateAllLocations()Lgnu/mapping/LocationEnumeration;

    move-result-object v0

    return-object v0
.end method

.method public enumerateLocations()Lgnu/mapping/LocationEnumeration;
    .locals 1

    .line 44
    invoke-virtual {p0}, Lgnu/expr/BuiltinEnvironment;->getLangEnvironment()Lgnu/mapping/Environment;

    move-result-object v0

    invoke-virtual {v0}, Lgnu/mapping/Environment;->enumerateLocations()Lgnu/mapping/LocationEnumeration;

    move-result-object v0

    return-object v0
.end method

.method public getLangEnvironment()Lgnu/mapping/Environment;
    .locals 1

    .line 19
    invoke-static {}, Lgnu/expr/Language;->getDefaultLanguage()Lgnu/expr/Language;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 20
    :cond_0
    invoke-virtual {v0}, Lgnu/expr/Language;->getLangEnvironment()Lgnu/mapping/Environment;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getLocation(Lgnu/mapping/Symbol;Ljava/lang/Object;IZ)Lgnu/mapping/NamedLocation;
    .locals 0

    .line 34
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1}, Ljava/lang/RuntimeException;-><init>()V

    throw p1
.end method

.method protected hasMoreElements(Lgnu/mapping/LocationEnumeration;)Z
    .locals 0

    .line 54
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1}, Ljava/lang/RuntimeException;-><init>()V

    throw p1
.end method

.method public lookup(Lgnu/mapping/Symbol;Ljava/lang/Object;I)Lgnu/mapping/NamedLocation;
    .locals 2

    .line 25
    sget-object v0, Lgnu/mapping/ThreadLocation;->ANONYMOUS:Ljava/lang/String;

    const/4 v1, 0x0

    if-ne p2, v0, :cond_0

    return-object v1

    .line 27
    :cond_0
    invoke-static {}, Lgnu/expr/Language;->getDefaultLanguage()Lgnu/expr/Language;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 28
    :cond_1
    invoke-virtual {v0, p1, p2, p3}, Lgnu/expr/Language;->lookupBuiltin(Lgnu/mapping/Symbol;Ljava/lang/Object;I)Lgnu/mapping/NamedLocation;

    move-result-object v1

    :goto_0
    return-object v1
.end method
