.class public Lgnu/kawa/xml/XmlNamespace;
.super Lgnu/mapping/Namespace;
.source "XmlNamespace.java"

# interfaces
.implements Ljava/io/Externalizable;


# static fields
.field public static final HTML:Lgnu/kawa/xml/XmlNamespace;

.field public static final HTML_BINDINGS:Lgnu/xml/NamespaceBinding;

.field public static final XHTML_NAMESPACE:Ljava/lang/String; = "http://www.w3.org/1999/xhtml"


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const-string v0, "http://www.w3.org/1999/xhtml"

    const-string v1, ""

    .line 10
    invoke-static {v0, v1}, Lgnu/kawa/xml/XmlNamespace;->valueOf(Ljava/lang/String;Ljava/lang/String;)Lgnu/kawa/xml/XmlNamespace;

    move-result-object v1

    sput-object v1, Lgnu/kawa/xml/XmlNamespace;->HTML:Lgnu/kawa/xml/XmlNamespace;

    .line 11
    new-instance v1, Lgnu/xml/NamespaceBinding;

    sget-object v2, Lgnu/xml/NamespaceBinding;->predefinedXML:Lgnu/xml/NamespaceBinding;

    const/4 v3, 0x0

    invoke-direct {v1, v3, v0, v2}, Lgnu/xml/NamespaceBinding;-><init>(Ljava/lang/String;Ljava/lang/String;Lgnu/xml/NamespaceBinding;)V

    sput-object v1, Lgnu/kawa/xml/XmlNamespace;->HTML_BINDINGS:Lgnu/xml/NamespaceBinding;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 47
    invoke-direct {p0}, Lgnu/mapping/Namespace;-><init>()V

    return-void
.end method

.method public static getInstance(Ljava/lang/String;Ljava/lang/String;)Lgnu/kawa/xml/XmlNamespace;
    .locals 4

    .line 17
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " [xml] -> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 18
    sget-object v1, Lgnu/kawa/xml/XmlNamespace;->nsTable:Ljava/util/Hashtable;

    monitor-enter v1

    .line 20
    :try_start_0
    sget-object v2, Lgnu/kawa/xml/XmlNamespace;->nsTable:Ljava/util/Hashtable;

    invoke-virtual {v2, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 21
    instance-of v3, v2, Lgnu/kawa/xml/XmlNamespace;

    if-eqz v3, :cond_0

    .line 22
    check-cast v2, Lgnu/kawa/xml/XmlNamespace;

    monitor-exit v1

    return-object v2

    .line 23
    :cond_0
    new-instance v2, Lgnu/kawa/xml/XmlNamespace;

    invoke-direct {v2}, Lgnu/kawa/xml/XmlNamespace;-><init>()V

    .line 24
    invoke-virtual {p1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Lgnu/kawa/xml/XmlNamespace;->setName(Ljava/lang/String;)V

    .line 25
    invoke-virtual {p0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object p0

    iput-object p0, v2, Lgnu/kawa/xml/XmlNamespace;->prefix:Ljava/lang/String;

    .line 26
    sget-object p0, Lgnu/kawa/xml/XmlNamespace;->nsTable:Ljava/util/Hashtable;

    invoke-virtual {p0, v0, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    monitor-exit v1

    return-object v2

    :catchall_0
    move-exception p0

    .line 28
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static valueOf(Ljava/lang/String;Ljava/lang/String;)Lgnu/kawa/xml/XmlNamespace;
    .locals 0

    .line 35
    invoke-static {p1, p0}, Lgnu/kawa/xml/XmlNamespace;->getInstance(Ljava/lang/String;Ljava/lang/String;)Lgnu/kawa/xml/XmlNamespace;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public get(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    .line 52
    invoke-virtual {p0, p1}, Lgnu/kawa/xml/XmlNamespace;->getSymbol(Ljava/lang/String;)Lgnu/mapping/Symbol;

    move-result-object p1

    invoke-static {p1}, Lgnu/kawa/xml/ElementType;->make(Lgnu/mapping/Symbol;)Lgnu/kawa/xml/ElementType;

    move-result-object p1

    .line 53
    sget-object v0, Lgnu/kawa/xml/XmlNamespace;->HTML:Lgnu/kawa/xml/XmlNamespace;

    if-ne p0, v0, :cond_0

    .line 54
    sget-object v0, Lgnu/kawa/xml/XmlNamespace;->HTML_BINDINGS:Lgnu/xml/NamespaceBinding;

    invoke-virtual {p1, v0}, Lgnu/kawa/xml/ElementType;->setNamespaceNodes(Lgnu/xml/NamespaceBinding;)V

    :cond_0
    return-object p1
.end method

.method public isConstant(Ljava/lang/String;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public readExternal(Ljava/io/ObjectInput;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 72
    invoke-interface {p1}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lgnu/kawa/xml/XmlNamespace;->setName(Ljava/lang/String;)V

    .line 73
    invoke-interface {p1}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lgnu/kawa/xml/XmlNamespace;->prefix:Ljava/lang/String;

    return-void
.end method

.method public readResolve()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/ObjectStreamException;
        }
    .end annotation

    .line 78
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lgnu/kawa/xml/XmlNamespace;->prefix:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " -> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lgnu/kawa/xml/XmlNamespace;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 79
    sget-object v1, Lgnu/kawa/xml/XmlNamespace;->nsTable:Ljava/util/Hashtable;

    invoke-virtual {v1, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgnu/mapping/Namespace;

    .line 80
    instance-of v2, v1, Lgnu/kawa/xml/XmlNamespace;

    if-eqz v2, :cond_0

    return-object v1

    .line 82
    :cond_0
    sget-object v1, Lgnu/kawa/xml/XmlNamespace;->nsTable:Ljava/util/Hashtable;

    invoke-virtual {v1, v0, p0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public writeExternal(Ljava/io/ObjectOutput;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 65
    invoke-virtual {p0}, Lgnu/kawa/xml/XmlNamespace;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    .line 66
    iget-object v0, p0, Lgnu/kawa/xml/XmlNamespace;->prefix:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    return-void
.end method
