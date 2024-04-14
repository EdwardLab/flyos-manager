.class public final Lgnu/xml/NamespaceBinding;
.super Ljava/lang/Object;
.source "NamespaceBinding.java"

# interfaces
.implements Ljava/io/Externalizable;


# static fields
.field public static final XML_NAMESPACE:Ljava/lang/String; = "http://www.w3.org/XML/1998/namespace"

.field public static final predefinedXML:Lgnu/xml/NamespaceBinding;


# instance fields
.field depth:I

.field next:Lgnu/xml/NamespaceBinding;

.field prefix:Ljava/lang/String;

.field uri:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 66
    new-instance v0, Lgnu/xml/NamespaceBinding;

    const-string v1, "xml"

    const-string v2, "http://www.w3.org/XML/1998/namespace"

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lgnu/xml/NamespaceBinding;-><init>(Ljava/lang/String;Ljava/lang/String;Lgnu/xml/NamespaceBinding;)V

    sput-object v0, Lgnu/xml/NamespaceBinding;->predefinedXML:Lgnu/xml/NamespaceBinding;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lgnu/xml/NamespaceBinding;)V
    .locals 0

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput-object p1, p0, Lgnu/xml/NamespaceBinding;->prefix:Ljava/lang/String;

    .line 59
    iput-object p2, p0, Lgnu/xml/NamespaceBinding;->uri:Ljava/lang/String;

    .line 60
    invoke-virtual {p0, p3}, Lgnu/xml/NamespaceBinding;->setNext(Lgnu/xml/NamespaceBinding;)V

    return-void
.end method

.method public static commonAncestor(Lgnu/xml/NamespaceBinding;Lgnu/xml/NamespaceBinding;)Lgnu/xml/NamespaceBinding;
    .locals 3

    .line 101
    iget v0, p0, Lgnu/xml/NamespaceBinding;->depth:I

    iget v1, p1, Lgnu/xml/NamespaceBinding;->depth:I

    if-le v0, v1, :cond_0

    goto :goto_0

    :cond_0
    move-object v2, p1

    move-object p1, p0

    move-object p0, v2

    .line 107
    :goto_0
    iget v0, p0, Lgnu/xml/NamespaceBinding;->depth:I

    iget v1, p1, Lgnu/xml/NamespaceBinding;->depth:I

    if-le v0, v1, :cond_1

    .line 108
    iget-object p0, p0, Lgnu/xml/NamespaceBinding;->next:Lgnu/xml/NamespaceBinding;

    goto :goto_0

    :cond_1
    :goto_1
    if-eq p1, p0, :cond_2

    .line 111
    iget-object p1, p1, Lgnu/xml/NamespaceBinding;->next:Lgnu/xml/NamespaceBinding;

    .line 112
    iget-object p0, p0, Lgnu/xml/NamespaceBinding;->next:Lgnu/xml/NamespaceBinding;

    goto :goto_1

    :cond_2
    return-object p1
.end method

.method public static maybeAdd(Ljava/lang/String;Ljava/lang/String;Lgnu/xml/NamespaceBinding;)Lgnu/xml/NamespaceBinding;
    .locals 1

    if-nez p2, :cond_1

    if-nez p1, :cond_0

    return-object p2

    .line 170
    :cond_0
    sget-object p2, Lgnu/xml/NamespaceBinding;->predefinedXML:Lgnu/xml/NamespaceBinding;

    .line 172
    :cond_1
    invoke-virtual {p2, p0}, Lgnu/xml/NamespaceBinding;->resolve(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    if-nez p1, :cond_3

    goto :goto_0

    .line 173
    :cond_2
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    :goto_0
    return-object p2

    .line 175
    :cond_3
    new-instance v0, Lgnu/xml/NamespaceBinding;

    invoke-direct {v0, p0, p1, p2}, Lgnu/xml/NamespaceBinding;-><init>(Ljava/lang/String;Ljava/lang/String;Lgnu/xml/NamespaceBinding;)V

    return-object v0
.end method

.method public static final nconc(Lgnu/xml/NamespaceBinding;Lgnu/xml/NamespaceBinding;)Lgnu/xml/NamespaceBinding;
    .locals 1

    if-nez p0, :cond_0

    return-object p1

    .line 50
    :cond_0
    iget-object v0, p0, Lgnu/xml/NamespaceBinding;->next:Lgnu/xml/NamespaceBinding;

    invoke-static {v0, p1}, Lgnu/xml/NamespaceBinding;->nconc(Lgnu/xml/NamespaceBinding;Lgnu/xml/NamespaceBinding;)Lgnu/xml/NamespaceBinding;

    move-result-object p1

    invoke-virtual {p0, p1}, Lgnu/xml/NamespaceBinding;->setNext(Lgnu/xml/NamespaceBinding;)V

    return-object p0
.end method


# virtual methods
.method public count(Lgnu/xml/NamespaceBinding;)I
    .locals 2

    const/4 v0, 0x0

    move-object v1, p0

    :goto_0
    if-eq v1, p1, :cond_0

    add-int/lit8 v0, v0, 0x1

    .line 157
    iget-object v1, v1, Lgnu/xml/NamespaceBinding;->next:Lgnu/xml/NamespaceBinding;

    goto :goto_0

    :cond_0
    return v0
.end method

.method public final getNext()Lgnu/xml/NamespaceBinding;
    .locals 1

    .line 35
    iget-object v0, p0, Lgnu/xml/NamespaceBinding;->next:Lgnu/xml/NamespaceBinding;

    return-object v0
.end method

.method public final getPrefix()Ljava/lang/String;
    .locals 1

    .line 19
    iget-object v0, p0, Lgnu/xml/NamespaceBinding;->prefix:Ljava/lang/String;

    return-object v0
.end method

.method public final getUri()Ljava/lang/String;
    .locals 1

    .line 27
    iget-object v0, p0, Lgnu/xml/NamespaceBinding;->uri:Ljava/lang/String;

    return-object v0
.end method

.method public readExternal(Ljava/io/ObjectInput;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 209
    invoke-interface {p1}, Ljava/io/ObjectInput;->readUTF()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lgnu/xml/NamespaceBinding;->prefix:Ljava/lang/String;

    .line 210
    invoke-interface {p1}, Ljava/io/ObjectInput;->readUTF()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lgnu/xml/NamespaceBinding;->uri:Ljava/lang/String;

    .line 211
    invoke-interface {p1}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lgnu/xml/NamespaceBinding;

    iput-object p1, p0, Lgnu/xml/NamespaceBinding;->next:Lgnu/xml/NamespaceBinding;

    return-void
.end method

.method public resolve(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    move-object v0, p0

    :goto_0
    if-eqz v0, :cond_1

    .line 77
    iget-object v1, v0, Lgnu/xml/NamespaceBinding;->prefix:Ljava/lang/String;

    if-ne v1, p1, :cond_0

    .line 78
    iget-object p1, v0, Lgnu/xml/NamespaceBinding;->uri:Ljava/lang/String;

    return-object p1

    .line 75
    :cond_0
    iget-object v0, v0, Lgnu/xml/NamespaceBinding;->next:Lgnu/xml/NamespaceBinding;

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public resolve(Ljava/lang/String;Lgnu/xml/NamespaceBinding;)Ljava/lang/String;
    .locals 2

    move-object v0, p0

    :goto_0
    if-eq v0, p2, :cond_1

    .line 92
    iget-object v1, v0, Lgnu/xml/NamespaceBinding;->prefix:Ljava/lang/String;

    if-ne v1, p1, :cond_0

    .line 93
    iget-object p1, v0, Lgnu/xml/NamespaceBinding;->uri:Ljava/lang/String;

    return-object p1

    .line 90
    :cond_0
    iget-object v0, v0, Lgnu/xml/NamespaceBinding;->next:Lgnu/xml/NamespaceBinding;

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public reversePrefix(Lgnu/xml/NamespaceBinding;)Lgnu/xml/NamespaceBinding;
    .locals 4

    if-nez p1, :cond_0

    const/4 v0, -0x1

    goto :goto_0

    .line 141
    :cond_0
    iget v0, p1, Lgnu/xml/NamespaceBinding;->depth:I

    :goto_0
    move-object v1, p0

    move-object v2, p1

    :goto_1
    if-eq v1, p1, :cond_1

    .line 144
    iget-object v3, v1, Lgnu/xml/NamespaceBinding;->next:Lgnu/xml/NamespaceBinding;

    .line 145
    iput-object v2, v1, Lgnu/xml/NamespaceBinding;->next:Lgnu/xml/NamespaceBinding;

    add-int/lit8 v0, v0, 0x1

    .line 147
    iput v0, v1, Lgnu/xml/NamespaceBinding;->depth:I

    move-object v2, v1

    move-object v1, v3

    goto :goto_1

    :cond_1
    return-object v2
.end method

.method public final setNext(Lgnu/xml/NamespaceBinding;)V
    .locals 0

    .line 38
    iput-object p1, p0, Lgnu/xml/NamespaceBinding;->next:Lgnu/xml/NamespaceBinding;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 39
    :cond_0
    iget p1, p1, Lgnu/xml/NamespaceBinding;->depth:I

    add-int/lit8 p1, p1, 0x1

    :goto_0
    iput p1, p0, Lgnu/xml/NamespaceBinding;->depth:I

    return-void
.end method

.method public final setPrefix(Ljava/lang/String;)V
    .locals 0

    .line 20
    iput-object p1, p0, Lgnu/xml/NamespaceBinding;->prefix:Ljava/lang/String;

    return-void
.end method

.method public final setUri(Ljava/lang/String;)V
    .locals 0

    .line 28
    iput-object p1, p0, Lgnu/xml/NamespaceBinding;->uri:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 181
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Namespace{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lgnu/xml/NamespaceBinding;->prefix:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lgnu/xml/NamespaceBinding;->uri:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", depth:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lgnu/xml/NamespaceBinding;->depth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toStringAll()Ljava/lang/String;
    .locals 3

    .line 187
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "Namespaces{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    move-object v1, p0

    :goto_0
    if-eqz v1, :cond_1

    .line 190
    iget-object v2, v1, Lgnu/xml/NamespaceBinding;->prefix:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, "=\""

    .line 191
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 192
    iget-object v2, v1, Lgnu/xml/NamespaceBinding;->uri:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    if-nez v1, :cond_0

    const-string v2, "\""

    goto :goto_1

    :cond_0
    const-string v2, "\", "

    .line 193
    :goto_1
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 188
    iget-object v1, v1, Lgnu/xml/NamespaceBinding;->next:Lgnu/xml/NamespaceBinding;

    goto :goto_0

    :cond_1
    const/16 v1, 0x7d

    .line 195
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 196
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

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

    .line 201
    iget-object v0, p0, Lgnu/xml/NamespaceBinding;->prefix:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeUTF(Ljava/lang/String;)V

    .line 202
    iget-object v0, p0, Lgnu/xml/NamespaceBinding;->uri:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeUTF(Ljava/lang/String;)V

    .line 203
    iget-object v0, p0, Lgnu/xml/NamespaceBinding;->next:Lgnu/xml/NamespaceBinding;

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    return-void
.end method
