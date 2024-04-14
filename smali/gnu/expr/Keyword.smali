.class public Lgnu/expr/Keyword;
.super Lgnu/mapping/Symbol;
.source "Keyword.java"

# interfaces
.implements Lgnu/text/Printable;
.implements Ljava/io/Externalizable;


# static fields
.field public static final keywordNamespace:Lgnu/mapping/Namespace;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 10
    invoke-static {}, Lgnu/mapping/Namespace;->create()Lgnu/mapping/Namespace;

    move-result-object v0

    sput-object v0, Lgnu/expr/Keyword;->keywordNamespace:Lgnu/mapping/Namespace;

    const-string v1, "(keywords)"

    .line 11
    invoke-virtual {v0, v1}, Lgnu/mapping/Namespace;->setName(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Lgnu/mapping/Symbol;-><init>()V

    return-void
.end method

.method public constructor <init>(Lgnu/mapping/Namespace;Ljava/lang/String;)V
    .locals 0

    .line 25
    invoke-direct {p0, p1, p2}, Lgnu/mapping/Symbol;-><init>(Lgnu/mapping/Namespace;Ljava/lang/String;)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 19
    sget-object v0, Lgnu/expr/Keyword;->keywordNamespace:Lgnu/mapping/Namespace;

    invoke-direct {p0, v0, p1}, Lgnu/mapping/Symbol;-><init>(Lgnu/mapping/Namespace;Ljava/lang/String;)V

    return-void
.end method

.method public static isKeyword(Ljava/lang/Object;)Z
    .locals 0

    .line 62
    instance-of p0, p0, Lgnu/expr/Keyword;

    return p0
.end method

.method public static make(Ljava/lang/String;)Lgnu/expr/Keyword;
    .locals 3

    .line 43
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    .line 44
    sget-object v1, Lgnu/expr/Keyword;->keywordNamespace:Lgnu/mapping/Namespace;

    const/4 v2, 0x0

    invoke-virtual {v1, p0, v0, v2}, Lgnu/mapping/Namespace;->lookup(Ljava/lang/String;IZ)Lgnu/mapping/Symbol;

    move-result-object v2

    check-cast v2, Lgnu/expr/Keyword;

    if-nez v2, :cond_0

    .line 47
    new-instance v2, Lgnu/expr/Keyword;

    invoke-direct {v2, p0}, Lgnu/expr/Keyword;-><init>(Ljava/lang/String;)V

    .line 48
    invoke-virtual {v1, v2, v0}, Lgnu/mapping/Namespace;->add(Lgnu/mapping/Symbol;I)Lgnu/mapping/Symbol;

    :cond_0
    return-object v2
.end method

.method public static searchForKeyword([Ljava/lang/Object;ILjava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 89
    :goto_0
    array-length v0, p0

    if-ge p1, v0, :cond_1

    .line 91
    aget-object v0, p0, p1

    if-ne v0, p2, :cond_0

    add-int/lit8 p1, p1, 0x1

    .line 92
    aget-object p0, p0, p1

    return-object p0

    :cond_0
    add-int/lit8 p1, p1, 0x2

    goto :goto_0

    .line 94
    :cond_1
    sget-object p0, Lgnu/expr/Special;->dfault:Lgnu/expr/Special;

    return-object p0
.end method

.method public static searchForKeyword([Ljava/lang/Object;ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 112
    :goto_0
    array-length v0, p0

    if-ge p1, v0, :cond_1

    .line 114
    aget-object v0, p0, p1

    if-ne v0, p2, :cond_0

    add-int/lit8 p1, p1, 0x1

    .line 115
    aget-object p0, p0, p1

    return-object p0

    :cond_0
    add-int/lit8 p1, p1, 0x2

    goto :goto_0

    :cond_1
    return-object p3
.end method


# virtual methods
.method public asSymbol()Lgnu/mapping/Symbol;
    .locals 2

    .line 33
    sget-object v0, Lgnu/mapping/Namespace;->EmptyNamespace:Lgnu/mapping/Namespace;

    invoke-virtual {p0}, Lgnu/expr/Keyword;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lgnu/mapping/Namespace;->getSymbol(Ljava/lang/String;)Lgnu/mapping/Symbol;

    move-result-object v0

    return-object v0
.end method

.method public print(Lgnu/lists/Consumer;)V
    .locals 1

    .line 72
    invoke-virtual {p0}, Lgnu/expr/Keyword;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lgnu/expr/Symbols;->print(Ljava/lang/String;Lgnu/lists/Consumer;)V

    const/16 v0, 0x3a

    .line 73
    invoke-interface {p1, v0}, Lgnu/lists/Consumer;->write(I)V

    return-void
.end method

.method public readExternal(Ljava/io/ObjectInput;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 128
    invoke-interface {p1}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lgnu/expr/Keyword;->name:Ljava/lang/String;

    return-void
.end method

.method public readResolve()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/ObjectStreamException;
        }
    .end annotation

    .line 133
    sget-object v0, Lgnu/expr/Keyword;->keywordNamespace:Lgnu/mapping/Namespace;

    invoke-virtual {p0}, Lgnu/expr/Keyword;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lgnu/expr/Keyword;->make(Ljava/lang/Object;Ljava/lang/String;)Lgnu/mapping/Symbol;

    move-result-object v0

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 67
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lgnu/expr/Keyword;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x3a

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeExternal(Ljava/io/ObjectOutput;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 122
    invoke-virtual {p0}, Lgnu/expr/Keyword;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    return-void
.end method
