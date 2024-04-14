.class public Lgnu/xml/XName;
.super Lgnu/mapping/Symbol;
.source "XName.java"

# interfaces
.implements Ljava/io/Externalizable;


# instance fields
.field namespaceNodes:Lgnu/xml/NamespaceBinding;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Lgnu/mapping/Symbol;-><init>()V

    return-void
.end method

.method public constructor <init>(Lgnu/mapping/Symbol;Lgnu/xml/NamespaceBinding;)V
    .locals 1

    .line 20
    invoke-virtual {p1}, Lgnu/mapping/Symbol;->getNamespace()Lgnu/mapping/Namespace;

    move-result-object v0

    invoke-virtual {p1}, Lgnu/mapping/Symbol;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lgnu/mapping/Symbol;-><init>(Lgnu/mapping/Namespace;Ljava/lang/String;)V

    .line 21
    iput-object p2, p0, Lgnu/xml/XName;->namespaceNodes:Lgnu/xml/NamespaceBinding;

    return-void
.end method

.method public static checkName(Ljava/lang/String;)I
    .locals 11

    .line 96
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, -0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x2

    :goto_0
    if-ge v4, v0, :cond_6

    const/4 v6, 0x1

    if-nez v4, :cond_1

    const/4 v7, 0x1

    goto :goto_1

    :cond_1
    const/4 v7, 0x0

    :goto_1
    add-int/lit8 v8, v4, 0x1

    .line 103
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const v9, 0xd800

    if-lt v4, v9, :cond_2

    const v10, 0xdc00

    if-ge v4, v10, :cond_2

    if-ge v8, v0, :cond_2

    sub-int/2addr v4, v9

    mul-int/lit16 v4, v4, 0x400

    add-int/lit8 v9, v8, 0x1

    .line 105
    invoke-virtual {p0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    sub-int/2addr v8, v10

    add-int/2addr v4, v8

    const/high16 v8, 0x10000

    add-int/2addr v4, v8

    move v8, v9

    :cond_2
    const/16 v9, 0x3a

    if-ne v4, v9, :cond_3

    if-ne v5, v2, :cond_5

    const/4 v5, 0x1

    goto :goto_2

    .line 111
    :cond_3
    invoke-static {v4}, Lgnu/xml/XName;->isNamePart(I)Z

    move-result v6

    if-nez v6, :cond_4

    return v1

    :cond_4
    if-eqz v7, :cond_5

    .line 113
    invoke-static {v4}, Lgnu/xml/XName;->isNameStart(I)Z

    move-result v4

    if-nez v4, :cond_5

    const/4 v5, 0x0

    :cond_5
    :goto_2
    move v4, v8

    goto :goto_0

    :cond_6
    return v5
.end method

.method public static isNCName(Ljava/lang/String;)Z
    .locals 1

    .line 86
    invoke-static {p0}, Lgnu/xml/XName;->checkName(Ljava/lang/String;)I

    move-result p0

    const/4 v0, 0x1

    if-le p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isName(Ljava/lang/String;)Z
    .locals 0

    .line 81
    invoke-static {p0}, Lgnu/xml/XName;->checkName(Ljava/lang/String;)I

    move-result p0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isNamePart(I)Z
    .locals 1

    .line 67
    invoke-static {p0}, Ljava/lang/Character;->isUnicodeIdentifierPart(I)Z

    move-result v0

    if-nez v0, :cond_1

    const/16 v0, 0x2d

    if-eq p0, v0, :cond_1

    const/16 v0, 0x2e

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static isNameStart(I)Z
    .locals 1

    .line 57
    invoke-static {p0}, Ljava/lang/Character;->isUnicodeIdentifierStart(I)Z

    move-result v0

    if-nez v0, :cond_1

    const/16 v0, 0x5f

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static isNmToken(Ljava/lang/String;)Z
    .locals 0

    .line 76
    invoke-static {p0}, Lgnu/xml/XName;->checkName(Ljava/lang/String;)I

    move-result p0

    if-ltz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public final getNamespaceNodes()Lgnu/xml/NamespaceBinding;
    .locals 1

    .line 27
    iget-object v0, p0, Lgnu/xml/XName;->namespaceNodes:Lgnu/xml/NamespaceBinding;

    return-object v0
.end method

.method lookupNamespaceURI(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 33
    iget-object v0, p0, Lgnu/xml/XName;->namespaceNodes:Lgnu/xml/NamespaceBinding;

    :goto_0
    if-eqz v0, :cond_1

    .line 35
    iget-object v1, v0, Lgnu/xml/NamespaceBinding;->prefix:Ljava/lang/String;

    if-ne p1, v1, :cond_0

    .line 36
    iget-object p1, v0, Lgnu/xml/NamespaceBinding;->uri:Ljava/lang/String;

    return-object p1

    .line 33
    :cond_0
    iget-object v0, v0, Lgnu/xml/NamespaceBinding;->next:Lgnu/xml/NamespaceBinding;

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public readExternal(Ljava/io/ObjectInput;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 50
    invoke-super {p0, p1}, Lgnu/mapping/Symbol;->readExternal(Ljava/io/ObjectInput;)V

    .line 51
    invoke-interface {p1}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lgnu/xml/NamespaceBinding;

    iput-object p1, p0, Lgnu/xml/XName;->namespaceNodes:Lgnu/xml/NamespaceBinding;

    return-void
.end method

.method public final setNamespaceNodes(Lgnu/xml/NamespaceBinding;)V
    .locals 0

    .line 29
    iput-object p1, p0, Lgnu/xml/XName;->namespaceNodes:Lgnu/xml/NamespaceBinding;

    return-void
.end method

.method public writeExternal(Ljava/io/ObjectOutput;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 43
    invoke-super {p0, p1}, Lgnu/mapping/Symbol;->writeExternal(Ljava/io/ObjectOutput;)V

    .line 44
    iget-object v0, p0, Lgnu/xml/XName;->namespaceNodes:Lgnu/xml/NamespaceBinding;

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    return-void
.end method
