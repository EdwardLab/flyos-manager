.class public Lgnu/bytecode/ArrayClassLoader;
.super Ljava/lang/ClassLoader;
.source "ArrayClassLoader.java"


# instance fields
.field cmap:Ljava/util/Hashtable;

.field context:Ljava/net/URL;

.field map:Ljava/util/Hashtable;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 21
    invoke-direct {p0}, Ljava/lang/ClassLoader;-><init>()V

    .line 13
    new-instance v0, Ljava/util/Hashtable;

    const/16 v1, 0x64

    invoke-direct {v0, v1}, Ljava/util/Hashtable;-><init>(I)V

    iput-object v0, p0, Lgnu/bytecode/ArrayClassLoader;->map:Ljava/util/Hashtable;

    .line 15
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0, v1}, Ljava/util/Hashtable;-><init>(I)V

    iput-object v0, p0, Lgnu/bytecode/ArrayClassLoader;->cmap:Ljava/util/Hashtable;

    return-void
.end method

.method public constructor <init>(Ljava/lang/ClassLoader;)V
    .locals 1

    .line 26
    invoke-direct {p0, p1}, Ljava/lang/ClassLoader;-><init>(Ljava/lang/ClassLoader;)V

    .line 13
    new-instance p1, Ljava/util/Hashtable;

    const/16 v0, 0x64

    invoke-direct {p1, v0}, Ljava/util/Hashtable;-><init>(I)V

    iput-object p1, p0, Lgnu/bytecode/ArrayClassLoader;->map:Ljava/util/Hashtable;

    .line 15
    new-instance p1, Ljava/util/Hashtable;

    invoke-direct {p1, v0}, Ljava/util/Hashtable;-><init>(I)V

    iput-object p1, p0, Lgnu/bytecode/ArrayClassLoader;->cmap:Ljava/util/Hashtable;

    return-void
.end method

.method public constructor <init>([Ljava/lang/String;[[B)V
    .locals 3

    .line 44
    invoke-direct {p0}, Ljava/lang/ClassLoader;-><init>()V

    .line 13
    new-instance v0, Ljava/util/Hashtable;

    const/16 v1, 0x64

    invoke-direct {v0, v1}, Ljava/util/Hashtable;-><init>(I)V

    iput-object v0, p0, Lgnu/bytecode/ArrayClassLoader;->map:Ljava/util/Hashtable;

    .line 15
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0, v1}, Ljava/util/Hashtable;-><init>(I)V

    iput-object v0, p0, Lgnu/bytecode/ArrayClassLoader;->cmap:Ljava/util/Hashtable;

    .line 45
    array-length v0, p2

    :goto_0
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_0

    .line 46
    aget-object v1, p1, v0

    aget-object v2, p2, v0

    invoke-virtual {p0, v1, v2}, Lgnu/bytecode/ArrayClassLoader;->addClass(Ljava/lang/String;[B)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public constructor <init>([[B)V
    .locals 3

    .line 38
    invoke-direct {p0}, Ljava/lang/ClassLoader;-><init>()V

    .line 13
    new-instance v0, Ljava/util/Hashtable;

    const/16 v1, 0x64

    invoke-direct {v0, v1}, Ljava/util/Hashtable;-><init>(I)V

    iput-object v0, p0, Lgnu/bytecode/ArrayClassLoader;->map:Ljava/util/Hashtable;

    .line 15
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0, v1}, Ljava/util/Hashtable;-><init>(I)V

    iput-object v0, p0, Lgnu/bytecode/ArrayClassLoader;->cmap:Ljava/util/Hashtable;

    .line 39
    array-length v0, p1

    :goto_0
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_0

    .line 40
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "lambda"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aget-object v2, p1, v0

    invoke-virtual {p0, v1, v2}, Lgnu/bytecode/ArrayClassLoader;->addClass(Ljava/lang/String;[B)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static getContextPackage(Ljava/lang/String;)Ljava/lang/Package;
    .locals 2

    .line 154
    :try_start_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 155
    instance-of v1, v0, Lgnu/bytecode/ArrayClassLoader;

    if-eqz v1, :cond_0

    .line 156
    check-cast v0, Lgnu/bytecode/ArrayClassLoader;

    invoke-virtual {v0, p0}, Lgnu/bytecode/ArrayClassLoader;->getPackage(Ljava/lang/String;)Ljava/lang/Package;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 161
    :catch_0
    :cond_0
    invoke-static {p0}, Ljava/lang/Package;->getPackage(Ljava/lang/String;)Ljava/lang/Package;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public addClass(Lgnu/bytecode/ClassType;)V
    .locals 2

    .line 61
    iget-object v0, p0, Lgnu/bytecode/ArrayClassLoader;->map:Ljava/util/Hashtable;

    invoke-virtual {p1}, Lgnu/bytecode/ClassType;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public addClass(Ljava/lang/Class;)V
    .locals 2

    .line 51
    iget-object v0, p0, Lgnu/bytecode/ArrayClassLoader;->cmap:Ljava/util/Hashtable;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public addClass(Ljava/lang/String;[B)V
    .locals 1

    .line 56
    iget-object v0, p0, Lgnu/bytecode/ArrayClassLoader;->map:Ljava/util/Hashtable;

    invoke-virtual {v0, p1, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method protected findResource(Ljava/lang/String;)Ljava/net/URL;
    .locals 2

    .line 79
    iget-object v0, p0, Lgnu/bytecode/ArrayClassLoader;->context:Ljava/net/URL;

    if-eqz v0, :cond_0

    .line 83
    :try_start_0
    new-instance v0, Ljava/net/URL;

    iget-object v1, p0, Lgnu/bytecode/ArrayClassLoader;->context:Ljava/net/URL;

    invoke-direct {v0, v1, p1}, Ljava/net/URL;-><init>(Ljava/net/URL;Ljava/lang/String;)V

    .line 84
    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/URLConnection;->connect()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    .line 92
    :catchall_0
    :cond_0
    invoke-super {p0, p1}, Ljava/lang/ClassLoader;->findResource(Ljava/lang/String;)Ljava/net/URL;

    move-result-object p1

    return-object p1
.end method

.method public getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;
    .locals 3

    .line 66
    invoke-super {p0, p1}, Ljava/lang/ClassLoader;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v1, ".class"

    .line 67
    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    .line 69
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x6

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    const/16 v1, 0x2f

    const/16 v2, 0x2e

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p1

    .line 70
    iget-object v1, p0, Lgnu/bytecode/ArrayClassLoader;->map:Ljava/util/Hashtable;

    invoke-virtual {v1, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 71
    instance-of v1, p1, [B

    if-eqz v1, :cond_0

    .line 72
    new-instance v0, Ljava/io/ByteArrayInputStream;

    check-cast p1, [B

    check-cast p1, [B

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    :cond_0
    return-object v0
.end method

.method public getResourceContext()Ljava/net/URL;
    .locals 1

    .line 30
    iget-object v0, p0, Lgnu/bytecode/ArrayClassLoader;->context:Ljava/net/URL;

    return-object v0
.end method

.method public loadClass(Ljava/lang/String;)Ljava/lang/Class;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 112
    iget-object v0, p0, Lgnu/bytecode/ArrayClassLoader;->cmap:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 114
    check-cast v0, Ljava/lang/Class;

    return-object v0

    .line 115
    :cond_0
    iget-object v0, p0, Lgnu/bytecode/ArrayClassLoader;->map:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 116
    instance-of v1, v0, Lgnu/bytecode/ClassType;

    if-eqz v1, :cond_2

    .line 118
    check-cast v0, Lgnu/bytecode/ClassType;

    .line 119
    invoke-virtual {v0}, Lgnu/bytecode/ClassType;->isExisting()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 120
    iget-object v0, v0, Lgnu/bytecode/ClassType;->reflectClass:Ljava/lang/Class;

    goto :goto_0

    .line 122
    :cond_1
    invoke-virtual {v0}, Lgnu/bytecode/ClassType;->writeToArray()[B

    move-result-object v0

    .line 125
    :cond_2
    :goto_0
    instance-of v1, v0, [B

    if-eqz v1, :cond_4

    .line 128
    monitor-enter p0

    .line 130
    :try_start_0
    iget-object v0, p0, Lgnu/bytecode/ArrayClassLoader;->map:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 131
    instance-of v1, v0, [B

    if-eqz v1, :cond_3

    .line 133
    check-cast v0, [B

    check-cast v0, [B

    const/4 v1, 0x0

    .line 134
    array-length v2, v0

    invoke-virtual {p0, p1, v0, v1, v2}, Lgnu/bytecode/ArrayClassLoader;->defineClass(Ljava/lang/String;[BII)Ljava/lang/Class;

    move-result-object v0

    .line 135
    iget-object v1, p0, Lgnu/bytecode/ArrayClassLoader;->cmap:Ljava/util/Hashtable;

    invoke-virtual {v1, p1, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 138
    :cond_3
    check-cast v0, Ljava/lang/Class;

    .line 139
    :goto_1
    monitor-exit p0

    goto :goto_2

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_4
    if-nez v0, :cond_5

    .line 142
    invoke-virtual {p0}, Lgnu/bytecode/ArrayClassLoader;->getParent()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    goto :goto_2

    .line 144
    :cond_5
    check-cast v0, Ljava/lang/Class;

    :goto_2
    return-object v0
.end method

.method public loadClass(Ljava/lang/String;Z)Ljava/lang/Class;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 98
    invoke-virtual {p0, p1}, Lgnu/bytecode/ArrayClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    if-eqz p2, :cond_0

    .line 100
    invoke-virtual {p0, p1}, Lgnu/bytecode/ArrayClassLoader;->resolveClass(Ljava/lang/Class;)V

    :cond_0
    return-object p1
.end method

.method public setResourceContext(Ljava/net/URL;)V
    .locals 0

    .line 33
    iput-object p1, p0, Lgnu/bytecode/ArrayClassLoader;->context:Ljava/net/URL;

    return-void
.end method
