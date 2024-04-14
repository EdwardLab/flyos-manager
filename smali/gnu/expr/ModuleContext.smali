.class public Lgnu/expr/ModuleContext;
.super Ljava/lang/Object;
.source "ModuleContext.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lgnu/expr/ModuleContext$ClassToInstanceMap;
    }
.end annotation


# static fields
.field public static IN_HTTP_SERVER:I

.field public static IN_SERVLET:I

.field static global:Lgnu/expr/ModuleContext;


# instance fields
.field flags:I

.field manager:Lgnu/expr/ModuleManager;

.field private table:Lgnu/expr/ModuleContext$ClassToInstanceMap;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 15
    new-instance v0, Lgnu/expr/ModuleContext;

    sget-object v1, Lgnu/expr/ModuleManager;->instance:Lgnu/expr/ModuleManager;

    invoke-direct {v0, v1}, Lgnu/expr/ModuleContext;-><init>(Lgnu/expr/ModuleManager;)V

    sput-object v0, Lgnu/expr/ModuleContext;->global:Lgnu/expr/ModuleContext;

    const/4 v0, 0x1

    .line 18
    sput v0, Lgnu/expr/ModuleContext;->IN_HTTP_SERVER:I

    const/4 v0, 0x2

    .line 19
    sput v0, Lgnu/expr/ModuleContext;->IN_SERVLET:I

    return-void
.end method

.method public constructor <init>(Lgnu/expr/ModuleManager;)V
    .locals 1

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    new-instance v0, Lgnu/expr/ModuleContext$ClassToInstanceMap;

    invoke-direct {v0}, Lgnu/expr/ModuleContext$ClassToInstanceMap;-><init>()V

    iput-object v0, p0, Lgnu/expr/ModuleContext;->table:Lgnu/expr/ModuleContext$ClassToInstanceMap;

    .line 27
    iput-object p1, p0, Lgnu/expr/ModuleContext;->manager:Lgnu/expr/ModuleManager;

    return-void
.end method

.method public static getContext()Lgnu/expr/ModuleContext;
    .locals 1

    .line 34
    sget-object v0, Lgnu/expr/ModuleContext;->global:Lgnu/expr/ModuleContext;

    return-object v0
.end method


# virtual methods
.method public addFlags(I)V
    .locals 1

    .line 23
    iget v0, p0, Lgnu/expr/ModuleContext;->flags:I

    or-int/2addr p1, v0

    iput p1, p0, Lgnu/expr/ModuleContext;->flags:I

    return-void
.end method

.method public declared-synchronized clear()V
    .locals 1

    monitor-enter p0

    .line 113
    :try_start_0
    iget-object v0, p0, Lgnu/expr/ModuleContext;->table:Lgnu/expr/ModuleContext$ClassToInstanceMap;

    invoke-virtual {v0}, Lgnu/expr/ModuleContext$ClassToInstanceMap;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 114
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public findFromInstance(Ljava/lang/Object;)Lgnu/expr/ModuleInfo;
    .locals 1

    .line 99
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 100
    monitor-enter p0

    .line 102
    :try_start_0
    invoke-static {v0}, Lgnu/expr/ModuleManager;->findWithClass(Ljava/lang/Class;)Lgnu/expr/ModuleInfo;

    move-result-object v0

    .line 103
    invoke-virtual {p0, p1}, Lgnu/expr/ModuleContext;->setInstance(Ljava/lang/Object;)V

    .line 104
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception p1

    .line 105
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public declared-synchronized findInstance(Lgnu/expr/ModuleInfo;)Ljava/lang/Object;
    .locals 4

    monitor-enter p0

    .line 50
    :try_start_0
    invoke-virtual {p1}, Lgnu/expr/ModuleInfo;->getModuleClass()Ljava/lang/Class;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 57
    :try_start_1
    invoke-virtual {p0, p1}, Lgnu/expr/ModuleContext;->findInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception v0

    .line 54
    :try_start_2
    invoke-virtual {p1}, Lgnu/expr/ModuleInfo;->getClassName()Ljava/lang/String;

    move-result-object p1

    .line 55
    new-instance v1, Lgnu/mapping/WrappedException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cannot find module "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1, v0}, Lgnu/mapping/WrappedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_0
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized findInstance(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 4

    monitor-enter p0

    .line 67
    :try_start_0
    iget-object v0, p0, Lgnu/expr/ModuleContext;->table:Lgnu/expr/ModuleContext$ClassToInstanceMap;

    invoke-virtual {v0, p1}, Lgnu/expr/ModuleContext$ClassToInstanceMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v0, :cond_0

    :try_start_1
    const-string v0, "$instance"

    .line 74
    invoke-virtual {p1, v0}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    .line 79
    :catch_0
    :try_start_2
    invoke-virtual {p1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_0
    move-object v0, p1

    .line 87
    :try_start_3
    invoke-virtual {p0, v0}, Lgnu/expr/ModuleContext;->setInstance(Ljava/lang/Object;)V

    goto :goto_2

    .line 84
    :goto_1
    new-instance v1, Lgnu/mapping/WrappedException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "exception while initializing module "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1, v0}, Lgnu/mapping/WrappedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 89
    :cond_0
    :goto_2
    monitor-exit p0

    return-object v0

    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public getFlags()I
    .locals 1

    .line 21
    iget v0, p0, Lgnu/expr/ModuleContext;->flags:I

    return v0
.end method

.method public getManager()Lgnu/expr/ModuleManager;
    .locals 1

    .line 39
    iget-object v0, p0, Lgnu/expr/ModuleContext;->manager:Lgnu/expr/ModuleManager;

    return-object v0
.end method

.method public declared-synchronized searchInstance(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1

    monitor-enter p0

    .line 62
    :try_start_0
    iget-object v0, p0, Lgnu/expr/ModuleContext;->table:Lgnu/expr/ModuleContext$ClassToInstanceMap;

    invoke-virtual {v0, p1}, Lgnu/expr/ModuleContext$ClassToInstanceMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setFlags(I)V
    .locals 0

    .line 22
    iput p1, p0, Lgnu/expr/ModuleContext;->flags:I

    return-void
.end method

.method public declared-synchronized setInstance(Ljava/lang/Object;)V
    .locals 2

    monitor-enter p0

    .line 94
    :try_start_0
    iget-object v0, p0, Lgnu/expr/ModuleContext;->table:Lgnu/expr/ModuleContext$ClassToInstanceMap;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lgnu/expr/ModuleContext$ClassToInstanceMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 95
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
