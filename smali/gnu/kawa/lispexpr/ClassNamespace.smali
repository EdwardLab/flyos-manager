.class public Lgnu/kawa/lispexpr/ClassNamespace;
.super Lgnu/mapping/Namespace;
.source "ClassNamespace.java"

# interfaces
.implements Ljava/io/Externalizable;


# instance fields
.field ctype:Lgnu/bytecode/ClassType;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Lgnu/mapping/Namespace;-><init>()V

    return-void
.end method

.method public constructor <init>(Lgnu/bytecode/ClassType;)V
    .locals 2

    .line 34
    invoke-direct {p0}, Lgnu/mapping/Namespace;-><init>()V

    .line 35
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "class:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lgnu/bytecode/ClassType;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lgnu/kawa/lispexpr/ClassNamespace;->setName(Ljava/lang/String;)V

    .line 36
    iput-object p1, p0, Lgnu/kawa/lispexpr/ClassNamespace;->ctype:Lgnu/bytecode/ClassType;

    return-void
.end method

.method public static getInstance(Ljava/lang/String;Lgnu/bytecode/ClassType;)Lgnu/kawa/lispexpr/ClassNamespace;
    .locals 3

    .line 18
    sget-object v0, Lgnu/kawa/lispexpr/ClassNamespace;->nsTable:Ljava/util/Hashtable;

    monitor-enter v0

    .line 20
    :try_start_0
    sget-object v1, Lgnu/kawa/lispexpr/ClassNamespace;->nsTable:Ljava/util/Hashtable;

    invoke-virtual {v1, p0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 21
    instance-of v2, v1, Lgnu/kawa/lispexpr/ClassNamespace;

    if-eqz v2, :cond_0

    .line 22
    check-cast v1, Lgnu/kawa/lispexpr/ClassNamespace;

    monitor-exit v0

    return-object v1

    .line 23
    :cond_0
    new-instance v1, Lgnu/kawa/lispexpr/ClassNamespace;

    invoke-direct {v1, p1}, Lgnu/kawa/lispexpr/ClassNamespace;-><init>(Lgnu/bytecode/ClassType;)V

    .line 24
    sget-object p1, Lgnu/kawa/lispexpr/ClassNamespace;->nsTable:Ljava/util/Hashtable;

    invoke-virtual {p1, p0, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p0

    .line 26
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method


# virtual methods
.method public get(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    .line 43
    :try_start_0
    iget-object v0, p0, Lgnu/kawa/lispexpr/ClassNamespace;->ctype:Lgnu/bytecode/ClassType;

    invoke-static {v0, p1}, Lgnu/kawa/functions/GetNamedPart;->getTypePart(Lgnu/bytecode/Type;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    :catchall_0
    move-exception p1

    .line 47
    invoke-static {p1}, Lgnu/mapping/WrappedException;->wrapIfNeeded(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public getClassType()Lgnu/bytecode/ClassType;
    .locals 1

    .line 13
    iget-object v0, p0, Lgnu/kawa/lispexpr/ClassNamespace;->ctype:Lgnu/bytecode/ClassType;

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

    .line 59
    invoke-interface {p1}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lgnu/bytecode/ClassType;

    iput-object p1, p0, Lgnu/kawa/lispexpr/ClassNamespace;->ctype:Lgnu/bytecode/ClassType;

    .line 60
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "class:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lgnu/kawa/lispexpr/ClassNamespace;->ctype:Lgnu/bytecode/ClassType;

    invoke-virtual {v0}, Lgnu/bytecode/ClassType;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lgnu/kawa/lispexpr/ClassNamespace;->setName(Ljava/lang/String;)V

    return-void
.end method

.method public readResolve()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/ObjectStreamException;
        }
    .end annotation

    .line 65
    invoke-virtual {p0}, Lgnu/kawa/lispexpr/ClassNamespace;->getName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 68
    sget-object v1, Lgnu/kawa/lispexpr/ClassNamespace;->nsTable:Ljava/util/Hashtable;

    invoke-virtual {v1, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgnu/mapping/Namespace;

    .line 69
    instance-of v2, v1, Lgnu/kawa/lispexpr/ClassNamespace;

    if-eqz v2, :cond_0

    return-object v1

    .line 71
    :cond_0
    sget-object v1, Lgnu/kawa/lispexpr/ClassNamespace;->nsTable:Ljava/util/Hashtable;

    invoke-virtual {v1, v0, p0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object p0
.end method

.method public writeExternal(Ljava/io/ObjectOutput;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 53
    iget-object v0, p0, Lgnu/kawa/lispexpr/ClassNamespace;->ctype:Lgnu/bytecode/ClassType;

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    return-void
.end method
