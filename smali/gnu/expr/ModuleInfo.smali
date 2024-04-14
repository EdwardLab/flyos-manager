.class public Lgnu/expr/ModuleInfo;
.super Ljava/lang/Object;
.source "ModuleInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lgnu/expr/ModuleInfo$ClassToInfoMap;
    }
.end annotation


# static fields
.field static mapClassToInfo:Lgnu/expr/ModuleInfo$ClassToInfoMap;


# instance fields
.field private className:Ljava/lang/String;

.field comp:Lgnu/expr/Compilation;

.field dependencies:[Lgnu/expr/ModuleInfo;

.field exp:Lgnu/expr/ModuleExp;

.field public lastCheckedTime:J

.field public lastModifiedTime:J

.field moduleClass:Ljava/lang/Class;

.field numDependencies:I

.field sourceAbsPath:Lgnu/text/Path;

.field sourceAbsPathname:Ljava/lang/String;

.field public sourcePath:Ljava/lang/String;

.field uri:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 22
    new-instance v0, Lgnu/expr/ModuleInfo$ClassToInfoMap;

    invoke-direct {v0}, Lgnu/expr/ModuleInfo$ClassToInfoMap;-><init>()V

    sput-object v0, Lgnu/expr/ModuleInfo;->mapClassToInfo:Lgnu/expr/ModuleInfo$ClassToInfoMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static absPath(Ljava/lang/String;)Lgnu/text/Path;
    .locals 0

    .line 59
    invoke-static {p0}, Lgnu/text/Path;->valueOf(Ljava/lang/Object;)Lgnu/text/Path;

    move-result-object p0

    invoke-virtual {p0}, Lgnu/text/Path;->getCanonical()Lgnu/text/Path;

    move-result-object p0

    return-object p0
.end method

.method public static find(Lgnu/bytecode/ClassType;)Lgnu/expr/ModuleInfo;
    .locals 1

    .line 244
    invoke-virtual {p0}, Lgnu/bytecode/ClassType;->isExisting()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 248
    :try_start_0
    invoke-virtual {p0}, Lgnu/bytecode/ClassType;->getReflectClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lgnu/expr/ModuleManager;->findWithClass(Ljava/lang/Class;)Lgnu/expr/ModuleInfo;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 254
    :catch_0
    :cond_0
    invoke-static {}, Lgnu/expr/ModuleManager;->getInstance()Lgnu/expr/ModuleManager;

    move-result-object v0

    invoke-virtual {p0}, Lgnu/bytecode/ClassType;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lgnu/expr/ModuleManager;->findWithClassName(Ljava/lang/String;)Lgnu/expr/ModuleInfo;

    move-result-object p0

    return-object p0
.end method

.method public static findFromInstance(Ljava/lang/Object;)Lgnu/expr/ModuleInfo;
    .locals 1

    .line 239
    invoke-static {}, Lgnu/expr/ModuleContext;->getContext()Lgnu/expr/ModuleContext;

    move-result-object v0

    invoke-virtual {v0, p0}, Lgnu/expr/ModuleContext;->findFromInstance(Ljava/lang/Object;)Lgnu/expr/ModuleInfo;

    move-result-object p0

    return-object p0
.end method

.method static makeDeclInModule2(Lgnu/expr/ModuleExp;Lgnu/expr/Declaration;)V
    .locals 5

    .line 277
    invoke-virtual {p1}, Lgnu/expr/Declaration;->getConstantValue()Ljava/lang/Object;

    move-result-object v0

    .line 278
    instance-of v1, v0, Lgnu/kawa/reflect/FieldLocation;

    if-eqz v1, :cond_3

    .line 280
    check-cast v0, Lgnu/kawa/reflect/FieldLocation;

    .line 281
    invoke-virtual {v0}, Lgnu/kawa/reflect/FieldLocation;->getDeclaration()Lgnu/expr/Declaration;

    move-result-object v1

    .line 282
    new-instance v2, Lgnu/expr/ReferenceExp;

    invoke-direct {v2, v1}, Lgnu/expr/ReferenceExp;-><init>(Lgnu/expr/Declaration;)V

    const/4 v3, 0x1

    .line 283
    invoke-virtual {p1, v3}, Lgnu/expr/Declaration;->setAlias(Z)V

    .line 284
    invoke-virtual {v2, v3}, Lgnu/expr/ReferenceExp;->setDontDereference(Z)V

    .line 285
    invoke-virtual {p1, v2}, Lgnu/expr/Declaration;->setValue(Lgnu/expr/Expression;)V

    .line 286
    invoke-virtual {v1}, Lgnu/expr/Declaration;->isProcedureDecl()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 287
    invoke-virtual {p1, v3}, Lgnu/expr/Declaration;->setProcedureDecl(Z)V

    :cond_0
    const-wide/32 v3, 0x8000

    .line 288
    invoke-virtual {v1, v3, v4}, Lgnu/expr/Declaration;->getFlag(J)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 289
    invoke-virtual {p1}, Lgnu/expr/Declaration;->setSyntax()V

    :cond_1
    const-wide/16 v3, 0x800

    .line 290
    invoke-virtual {p1, v3, v4}, Lgnu/expr/Declaration;->getFlag(J)Z

    move-result p1

    if-nez p1, :cond_3

    .line 292
    invoke-virtual {v0}, Lgnu/kawa/reflect/FieldLocation;->getDeclaringClass()Lgnu/bytecode/ClassType;

    move-result-object p1

    .line 293
    invoke-virtual {p1}, Lgnu/bytecode/ClassType;->getName()Ljava/lang/String;

    move-result-object p1

    .line 294
    invoke-virtual {p0}, Lgnu/expr/ModuleExp;->firstDecl()Lgnu/expr/Declaration;

    move-result-object p0

    :goto_0
    if-eqz p0, :cond_3

    .line 297
    invoke-virtual {p0}, Lgnu/expr/Declaration;->getType()Lgnu/bytecode/Type;

    move-result-object v0

    invoke-virtual {v0}, Lgnu/bytecode/Type;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-wide/32 v0, 0x40000000

    invoke-virtual {p0, v0, v1}, Lgnu/expr/Declaration;->getFlag(J)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 300
    invoke-virtual {v2, p0}, Lgnu/expr/ReferenceExp;->setContextDecl(Lgnu/expr/Declaration;)V

    goto :goto_1

    .line 295
    :cond_2
    invoke-virtual {p0}, Lgnu/expr/Declaration;->nextDecl()Lgnu/expr/Declaration;

    move-result-object p0

    goto :goto_0

    :cond_3
    :goto_1
    return-void
.end method

.method public static register(Ljava/lang/Object;)V
    .locals 1

    .line 259
    invoke-static {}, Lgnu/expr/ModuleContext;->getContext()Lgnu/expr/ModuleContext;

    move-result-object v0

    invoke-virtual {v0, p0}, Lgnu/expr/ModuleContext;->setInstance(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public declared-synchronized addDependency(Lgnu/expr/ModuleInfo;)V
    .locals 4

    monitor-enter p0

    .line 104
    :try_start_0
    iget-object v0, p0, Lgnu/expr/ModuleInfo;->dependencies:[Lgnu/expr/ModuleInfo;

    if-nez v0, :cond_0

    const/16 v0, 0x8

    new-array v0, v0, [Lgnu/expr/ModuleInfo;

    .line 105
    iput-object v0, p0, Lgnu/expr/ModuleInfo;->dependencies:[Lgnu/expr/ModuleInfo;

    goto :goto_0

    .line 106
    :cond_0
    iget v1, p0, Lgnu/expr/ModuleInfo;->numDependencies:I

    array-length v2, v0

    if-ne v1, v2, :cond_1

    mul-int/lit8 v2, v1, 0x2

    .line 108
    new-array v2, v2, [Lgnu/expr/ModuleInfo;

    const/4 v3, 0x0

    .line 109
    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 110
    iput-object v2, p0, Lgnu/expr/ModuleInfo;->dependencies:[Lgnu/expr/ModuleInfo;

    .line 112
    :cond_1
    :goto_0
    iget-object v0, p0, Lgnu/expr/ModuleInfo;->dependencies:[Lgnu/expr/ModuleInfo;

    iget v1, p0, Lgnu/expr/ModuleInfo;->numDependencies:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lgnu/expr/ModuleInfo;->numDependencies:I

    aput-object p1, v0, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 113
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public checkCurrent(Lgnu/expr/ModuleManager;J)Z
    .locals 10

    .line 378
    iget-object v0, p0, Lgnu/expr/ModuleInfo;->sourceAbsPath:Lgnu/text/Path;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    .line 380
    :cond_0
    iget-wide v2, p0, Lgnu/expr/ModuleInfo;->lastCheckedTime:J

    iget-wide v4, p1, Lgnu/expr/ModuleManager;->lastModifiedCacheTime:J

    add-long/2addr v2, v4

    const/4 v0, 0x0

    cmp-long v4, v2, p2

    if-ltz v4, :cond_2

    .line 381
    iget-object p1, p0, Lgnu/expr/ModuleInfo;->moduleClass:Ljava/lang/Class;

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1

    .line 382
    :cond_2
    iget-object v2, p0, Lgnu/expr/ModuleInfo;->sourceAbsPath:Lgnu/text/Path;

    invoke-virtual {v2}, Lgnu/text/Path;->getLastModified()J

    move-result-wide v2

    .line 383
    iget-wide v4, p0, Lgnu/expr/ModuleInfo;->lastModifiedTime:J

    .line 384
    iput-wide v2, p0, Lgnu/expr/ModuleInfo;->lastModifiedTime:J

    .line 385
    iput-wide p2, p0, Lgnu/expr/ModuleInfo;->lastCheckedTime:J

    .line 386
    iget-object v6, p0, Lgnu/expr/ModuleInfo;->className:Ljava/lang/String;

    if-nez v6, :cond_3

    return v0

    .line 388
    :cond_3
    iget-object v7, p0, Lgnu/expr/ModuleInfo;->moduleClass:Ljava/lang/Class;

    if-nez v7, :cond_4

    .line 392
    :try_start_0
    invoke-static {v6}, Lgnu/bytecode/ClassType;->getContextClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    iput-object v6, p0, Lgnu/expr/ModuleInfo;->moduleClass:Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    return v0

    :cond_4
    :goto_1
    const-wide/16 v6, 0x0

    const/4 v8, 0x0

    cmp-long v9, v4, v6

    if-nez v9, :cond_7

    .line 399
    iget-object v6, p0, Lgnu/expr/ModuleInfo;->moduleClass:Ljava/lang/Class;

    if-eqz v6, :cond_7

    .line 401
    iget-object v6, p0, Lgnu/expr/ModuleInfo;->className:Ljava/lang/String;

    const/16 v7, 0x2e

    .line 402
    invoke-virtual {v6, v7}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v7

    if-ltz v7, :cond_5

    add-int/2addr v7, v1

    .line 404
    invoke-virtual {v6, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    .line 405
    :cond_5
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ".class"

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 406
    iget-object v7, p0, Lgnu/expr/ModuleInfo;->moduleClass:Ljava/lang/Class;

    invoke-virtual {v7, v6}, Ljava/lang/Class;->getResource(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v6

    if-eqz v6, :cond_6

    .line 411
    :try_start_1
    invoke-virtual {v6}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v7

    invoke-virtual {v7}, Ljava/net/URLConnection;->getLastModified()J

    move-result-wide v4
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-object v6, v8

    :cond_6
    :goto_2
    if-nez v6, :cond_7

    return v1

    :cond_7
    cmp-long v6, v2, v4

    if-lez v6, :cond_8

    .line 427
    iput-object v8, p0, Lgnu/expr/ModuleInfo;->moduleClass:Ljava/lang/Class;

    return v0

    .line 430
    :cond_8
    iget v2, p0, Lgnu/expr/ModuleInfo;->numDependencies:I

    :cond_9
    add-int/lit8 v2, v2, -0x1

    if-ltz v2, :cond_a

    .line 432
    iget-object v3, p0, Lgnu/expr/ModuleInfo;->dependencies:[Lgnu/expr/ModuleInfo;

    aget-object v3, v3, v2

    .line 433
    iget-object v4, v3, Lgnu/expr/ModuleInfo;->comp:Lgnu/expr/Compilation;

    if-nez v4, :cond_9

    invoke-virtual {v3, p1, p2, p3}, Lgnu/expr/ModuleInfo;->checkCurrent(Lgnu/expr/ModuleManager;J)Z

    move-result v3

    if-nez v3, :cond_9

    .line 435
    iput-object v8, p0, Lgnu/expr/ModuleInfo;->moduleClass:Ljava/lang/Class;

    return v0

    :cond_a
    return v1
.end method

.method public cleanupAfterCompilation()V
    .locals 1

    .line 53
    iget-object v0, p0, Lgnu/expr/ModuleInfo;->comp:Lgnu/expr/Compilation;

    if-eqz v0, :cond_0

    .line 54
    invoke-virtual {v0}, Lgnu/expr/Compilation;->cleanupAfterCompilation()V

    :cond_0
    return-void
.end method

.method public clearClass()V
    .locals 2

    const/4 v0, 0x0

    .line 366
    iput-object v0, p0, Lgnu/expr/ModuleInfo;->moduleClass:Ljava/lang/Class;

    const/4 v1, 0x0

    .line 367
    iput v1, p0, Lgnu/expr/ModuleInfo;->numDependencies:I

    .line 368
    iput-object v0, p0, Lgnu/expr/ModuleInfo;->dependencies:[Lgnu/expr/ModuleInfo;

    return-void
.end method

.method public declared-synchronized getClassName()Ljava/lang/String;
    .locals 1

    monitor-enter p0

    .line 126
    :try_start_0
    iget-object v0, p0, Lgnu/expr/ModuleInfo;->className:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 128
    iget-object v0, p0, Lgnu/expr/ModuleInfo;->moduleClass:Ljava/lang/Class;

    if-eqz v0, :cond_0

    .line 129
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lgnu/expr/ModuleInfo;->className:Ljava/lang/String;

    goto :goto_0

    .line 130
    :cond_0
    iget-object v0, p0, Lgnu/expr/ModuleInfo;->comp:Lgnu/expr/Compilation;

    if-eqz v0, :cond_1

    iget-object v0, v0, Lgnu/expr/Compilation;->mainClass:Lgnu/bytecode/ClassType;

    if-eqz v0, :cond_1

    .line 131
    iget-object v0, p0, Lgnu/expr/ModuleInfo;->comp:Lgnu/expr/Compilation;

    iget-object v0, v0, Lgnu/expr/Compilation;->mainClass:Lgnu/bytecode/ClassType;

    invoke-virtual {v0}, Lgnu/bytecode/ClassType;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lgnu/expr/ModuleInfo;->className:Ljava/lang/String;

    .line 133
    :cond_1
    :goto_0
    iget-object v0, p0, Lgnu/expr/ModuleInfo;->className:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getClassType()Lgnu/bytecode/ClassType;
    .locals 1

    monitor-enter p0

    .line 117
    :try_start_0
    iget-object v0, p0, Lgnu/expr/ModuleInfo;->moduleClass:Ljava/lang/Class;

    if-eqz v0, :cond_0

    .line 118
    invoke-static {v0}, Lgnu/bytecode/Type;->make(Ljava/lang/Class;)Lgnu/bytecode/Type;

    move-result-object v0

    check-cast v0, Lgnu/bytecode/ClassType;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 119
    :cond_0
    :try_start_1
    iget-object v0, p0, Lgnu/expr/ModuleInfo;->comp:Lgnu/expr/Compilation;

    if-eqz v0, :cond_1

    iget-object v0, v0, Lgnu/expr/Compilation;->mainClass:Lgnu/bytecode/ClassType;

    if-eqz v0, :cond_1

    .line 120
    iget-object v0, p0, Lgnu/expr/ModuleInfo;->comp:Lgnu/expr/Compilation;

    iget-object v0, v0, Lgnu/expr/Compilation;->mainClass:Lgnu/bytecode/ClassType;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0

    .line 121
    :cond_1
    :try_start_2
    iget-object v0, p0, Lgnu/expr/ModuleInfo;->className:Ljava/lang/String;

    invoke-static {v0}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getCompilation()Lgnu/expr/Compilation;
    .locals 1

    .line 34
    iget-object v0, p0, Lgnu/expr/ModuleInfo;->comp:Lgnu/expr/Compilation;

    return-object v0
.end method

.method public getInstance()Ljava/lang/Object;
    .locals 1

    .line 264
    invoke-static {}, Lgnu/expr/ModuleContext;->getContext()Lgnu/expr/ModuleContext;

    move-result-object v0

    invoke-virtual {v0, p0}, Lgnu/expr/ModuleContext;->findInstance(Lgnu/expr/ModuleInfo;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized getModuleClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    monitor-enter p0

    .line 217
    :try_start_0
    iget-object v0, p0, Lgnu/expr/ModuleInfo;->moduleClass:Ljava/lang/Class;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 219
    monitor-exit p0

    return-object v0

    .line 220
    :cond_0
    :try_start_1
    iget-object v0, p0, Lgnu/expr/ModuleInfo;->className:Ljava/lang/String;

    invoke-static {v0}, Lgnu/bytecode/ClassType;->getContextClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 221
    iput-object v0, p0, Lgnu/expr/ModuleInfo;->moduleClass:Ljava/lang/Class;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 222
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getModuleClassRaw()Ljava/lang/Class;
    .locals 1

    .line 227
    iget-object v0, p0, Lgnu/expr/ModuleInfo;->moduleClass:Ljava/lang/Class;

    return-object v0
.end method

.method public declared-synchronized getModuleExp()Lgnu/expr/ModuleExp;
    .locals 3

    monitor-enter p0

    .line 143
    :try_start_0
    iget-object v0, p0, Lgnu/expr/ModuleInfo;->exp:Lgnu/expr/ModuleExp;

    if-nez v0, :cond_1

    .line 146
    iget-object v0, p0, Lgnu/expr/ModuleInfo;->comp:Lgnu/expr/Compilation;

    if-eqz v0, :cond_0

    .line 147
    iget-object v0, v0, Lgnu/expr/Compilation;->mainLambda:Lgnu/expr/ModuleExp;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 148
    :cond_0
    :try_start_1
    iget-object v0, p0, Lgnu/expr/ModuleInfo;->className:Ljava/lang/String;

    invoke-static {v0}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v0

    .line 149
    new-instance v1, Lgnu/expr/ModuleExp;

    invoke-direct {v1}, Lgnu/expr/ModuleExp;-><init>()V

    .line 150
    iput-object v0, v1, Lgnu/expr/ModuleExp;->type:Lgnu/bytecode/ClassType;

    .line 151
    invoke-virtual {v0}, Lgnu/bytecode/ClassType;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lgnu/expr/ModuleExp;->setName(Ljava/lang/String;)V

    .line 152
    iget v0, v1, Lgnu/expr/ModuleExp;->flags:I

    const/high16 v2, 0x80000

    or-int/2addr v0, v2

    iput v0, v1, Lgnu/expr/ModuleExp;->flags:I

    .line 153
    iput-object p0, v1, Lgnu/expr/ModuleExp;->info:Lgnu/expr/ModuleInfo;

    .line 154
    iput-object v1, p0, Lgnu/expr/ModuleInfo;->exp:Lgnu/expr/ModuleExp;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v0, v1

    .line 156
    :cond_1
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getNamespaceUri()Ljava/lang/String;
    .locals 1

    .line 27
    iget-object v0, p0, Lgnu/expr/ModuleInfo;->uri:Ljava/lang/String;

    return-object v0
.end method

.method public getRunInstance()Ljava/lang/Object;
    .locals 2

    .line 269
    invoke-virtual {p0}, Lgnu/expr/ModuleInfo;->getInstance()Ljava/lang/Object;

    move-result-object v0

    .line 270
    instance-of v1, v0, Ljava/lang/Runnable;

    if-eqz v1, :cond_0

    .line 271
    move-object v1, v0

    check-cast v1, Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-object v0
.end method

.method public getSourceAbsPath()Lgnu/text/Path;
    .locals 1

    .line 82
    iget-object v0, p0, Lgnu/expr/ModuleInfo;->sourceAbsPath:Lgnu/text/Path;

    return-object v0
.end method

.method public getSourceAbsPathname()Ljava/lang/String;
    .locals 2

    .line 93
    iget-object v0, p0, Lgnu/expr/ModuleInfo;->sourceAbsPathname:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 94
    iget-object v1, p0, Lgnu/expr/ModuleInfo;->sourceAbsPath:Lgnu/text/Path;

    if-eqz v1, :cond_0

    .line 96
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 97
    iput-object v0, p0, Lgnu/expr/ModuleInfo;->sourceAbsPathname:Ljava/lang/String;

    :cond_0
    return-object v0
.end method

.method public getState()I
    .locals 1

    .line 308
    iget-object v0, p0, Lgnu/expr/ModuleInfo;->comp:Lgnu/expr/Compilation;

    if-nez v0, :cond_0

    const/16 v0, 0xe

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lgnu/expr/Compilation;->getState()I

    move-result v0

    :goto_0
    return v0
.end method

.method public loadByStages(I)V
    .locals 3

    .line 312
    invoke-virtual {p0}, Lgnu/expr/ModuleInfo;->getState()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    if-lt v0, p1, :cond_0

    return-void

    :cond_0
    add-int/lit8 v0, p1, -0x2

    .line 315
    invoke-virtual {p0, v0}, Lgnu/expr/ModuleInfo;->loadByStages(I)V

    .line 316
    invoke-virtual {p0}, Lgnu/expr/ModuleInfo;->getState()I

    move-result v0

    if-lt v0, p1, :cond_1

    return-void

    .line 319
    :cond_1
    iget-object v1, p0, Lgnu/expr/ModuleInfo;->comp:Lgnu/expr/Compilation;

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v1, v0}, Lgnu/expr/Compilation;->setState(I)V

    .line 320
    iget v0, p0, Lgnu/expr/ModuleInfo;->numDependencies:I

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    .line 323
    iget-object v2, p0, Lgnu/expr/ModuleInfo;->dependencies:[Lgnu/expr/ModuleInfo;

    aget-object v2, v2, v1

    .line 324
    invoke-virtual {v2, p1}, Lgnu/expr/ModuleInfo;->loadByStages(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 326
    :cond_2
    invoke-virtual {p0}, Lgnu/expr/ModuleInfo;->getState()I

    move-result v0

    if-lt v0, p1, :cond_3

    return-void

    .line 329
    :cond_3
    iget-object v1, p0, Lgnu/expr/ModuleInfo;->comp:Lgnu/expr/Compilation;

    and-int/lit8 v0, v0, -0x2

    invoke-virtual {v1, v0}, Lgnu/expr/Compilation;->setState(I)V

    .line 330
    iget-object v0, p0, Lgnu/expr/ModuleInfo;->comp:Lgnu/expr/Compilation;

    invoke-virtual {v0, p1}, Lgnu/expr/Compilation;->process(I)V

    return-void
.end method

.method public loadEager(I)Z
    .locals 7

    .line 339
    iget-object v0, p0, Lgnu/expr/ModuleInfo;->comp:Lgnu/expr/Compilation;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iget-object v0, p0, Lgnu/expr/ModuleInfo;->className:Ljava/lang/String;

    if-eqz v0, :cond_0

    return v1

    .line 341
    :cond_0
    invoke-virtual {p0}, Lgnu/expr/ModuleInfo;->getState()I

    move-result v0

    const/4 v2, 0x1

    if-lt v0, p1, :cond_1

    return v2

    :cond_1
    and-int/lit8 v3, v0, 0x1

    if-eqz v3, :cond_2

    return v1

    .line 346
    :cond_2
    iget-object v3, p0, Lgnu/expr/ModuleInfo;->comp:Lgnu/expr/Compilation;

    add-int/lit8 v4, v0, 0x1

    invoke-virtual {v3, v4}, Lgnu/expr/Compilation;->setState(I)V

    .line 347
    iget v3, p0, Lgnu/expr/ModuleInfo;->numDependencies:I

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v3, :cond_5

    .line 350
    iget-object v6, p0, Lgnu/expr/ModuleInfo;->dependencies:[Lgnu/expr/ModuleInfo;

    aget-object v6, v6, v5

    .line 351
    invoke-virtual {v6, p1}, Lgnu/expr/ModuleInfo;->loadEager(I)Z

    move-result v6

    if-nez v6, :cond_4

    .line 353
    invoke-virtual {p0}, Lgnu/expr/ModuleInfo;->getState()I

    move-result p1

    if-ne p1, v4, :cond_3

    .line 354
    iget-object p1, p0, Lgnu/expr/ModuleInfo;->comp:Lgnu/expr/Compilation;

    invoke-virtual {p1, v0}, Lgnu/expr/Compilation;->setState(I)V

    :cond_3
    return v1

    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 358
    :cond_5
    invoke-virtual {p0}, Lgnu/expr/ModuleInfo;->getState()I

    move-result v3

    if-ne v3, v4, :cond_6

    .line 359
    iget-object v3, p0, Lgnu/expr/ModuleInfo;->comp:Lgnu/expr/Compilation;

    invoke-virtual {v3, v0}, Lgnu/expr/Compilation;->setState(I)V

    .line 360
    :cond_6
    iget-object v0, p0, Lgnu/expr/ModuleInfo;->comp:Lgnu/expr/Compilation;

    invoke-virtual {v0, p1}, Lgnu/expr/Compilation;->process(I)V

    .line 361
    invoke-virtual {p0}, Lgnu/expr/ModuleInfo;->getState()I

    move-result v0

    if-ne v0, p1, :cond_7

    const/4 v1, 0x1

    :cond_7
    return v1
.end method

.method public setClassName(Ljava/lang/String;)V
    .locals 0

    .line 138
    iput-object p1, p0, Lgnu/expr/ModuleInfo;->className:Ljava/lang/String;

    return-void
.end method

.method public setCompilation(Lgnu/expr/Compilation;)V
    .locals 0

    .line 38
    iput-object p0, p1, Lgnu/expr/Compilation;->minfo:Lgnu/expr/ModuleInfo;

    .line 39
    iput-object p1, p0, Lgnu/expr/ModuleInfo;->comp:Lgnu/expr/Compilation;

    .line 40
    iget-object p1, p1, Lgnu/expr/Compilation;->mainLambda:Lgnu/expr/ModuleExp;

    .line 41
    iput-object p1, p0, Lgnu/expr/ModuleInfo;->exp:Lgnu/expr/ModuleExp;

    if-eqz p1, :cond_0

    .line 44
    invoke-virtual {p1}, Lgnu/expr/ModuleExp;->getFileName()Ljava/lang/String;

    move-result-object p1

    .line 45
    iput-object p1, p0, Lgnu/expr/ModuleInfo;->sourcePath:Ljava/lang/String;

    .line 46
    invoke-static {p1}, Lgnu/expr/ModuleInfo;->absPath(Ljava/lang/String;)Lgnu/text/Path;

    move-result-object p1

    .line 47
    iput-object p1, p0, Lgnu/expr/ModuleInfo;->sourceAbsPath:Lgnu/text/Path;

    :cond_0
    return-void
.end method

.method public setModuleClass(Ljava/lang/Class;)V
    .locals 1

    .line 232
    iput-object p1, p0, Lgnu/expr/ModuleInfo;->moduleClass:Ljava/lang/Class;

    .line 233
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lgnu/expr/ModuleInfo;->className:Ljava/lang/String;

    .line 234
    sget-object v0, Lgnu/expr/ModuleInfo;->mapClassToInfo:Lgnu/expr/ModuleInfo$ClassToInfoMap;

    invoke-virtual {v0, p1, p0}, Lgnu/expr/ModuleInfo$ClassToInfoMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setNamespaceUri(Ljava/lang/String;)V
    .locals 0

    .line 28
    iput-object p1, p0, Lgnu/expr/ModuleInfo;->uri:Ljava/lang/String;

    return-void
.end method

.method public setSourceAbsPath(Lgnu/text/Path;)V
    .locals 0

    .line 87
    iput-object p1, p0, Lgnu/expr/ModuleInfo;->sourceAbsPath:Lgnu/text/Path;

    const/4 p1, 0x0

    .line 88
    iput-object p1, p0, Lgnu/expr/ModuleInfo;->sourceAbsPathname:Ljava/lang/String;

    return-void
.end method

.method public declared-synchronized setupModuleExp()Lgnu/expr/ModuleExp;
    .locals 9

    monitor-enter p0

    .line 162
    :try_start_0
    invoke-virtual {p0}, Lgnu/expr/ModuleInfo;->getModuleExp()Lgnu/expr/ModuleExp;

    move-result-object v0

    .line 163
    iget v1, v0, Lgnu/expr/ModuleExp;->flags:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/high16 v2, 0x80000

    and-int/2addr v1, v2

    if-nez v1, :cond_0

    .line 164
    monitor-exit p0

    return-object v0

    :cond_0
    const/4 v1, 0x0

    .line 165
    :try_start_1
    invoke-virtual {v0, v1, v2}, Lgnu/expr/ModuleExp;->setFlag(ZI)V

    .line 168
    iget-object v1, p0, Lgnu/expr/ModuleInfo;->moduleClass:Ljava/lang/Class;

    if-eqz v1, :cond_1

    .line 171
    invoke-static {v1}, Lgnu/bytecode/Type;->make(Ljava/lang/Class;)Lgnu/bytecode/Type;

    move-result-object v2

    check-cast v2, Lgnu/bytecode/ClassType;

    goto :goto_0

    .line 175
    :cond_1
    iget-object v1, p0, Lgnu/expr/ModuleInfo;->className:Ljava/lang/String;

    invoke-static {v1}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v2

    .line 176
    invoke-virtual {v2}, Lgnu/bytecode/ClassType;->getReflectClass()Ljava/lang/Class;

    move-result-object v1

    .line 180
    :goto_0
    invoke-static {}, Lgnu/expr/Language;->getDefaultLanguage()Lgnu/expr/Language;

    move-result-object v3

    .line 181
    invoke-virtual {v2}, Lgnu/bytecode/ClassType;->getFields()Lgnu/bytecode/Field;

    move-result-object v2

    const/4 v4, 0x0

    move-object v5, v4

    :goto_1
    if-eqz v2, :cond_6

    .line 183
    invoke-virtual {v2}, Lgnu/bytecode/Field;->getFlags()I

    move-result v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    and-int/lit8 v7, v6, 0x1

    if-nez v7, :cond_2

    goto :goto_2

    :cond_2
    and-int/lit8 v7, v6, 0x8

    if-nez v7, :cond_3

    if-nez v5, :cond_3

    .line 189
    :try_start_2
    invoke-virtual {p0}, Lgnu/expr/ModuleInfo;->getInstance()Ljava/lang/Object;

    move-result-object v5

    .line 190
    :cond_3
    invoke-virtual {v2}, Lgnu/bytecode/Field;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    .line 192
    invoke-virtual {v3, v0, v7, v2}, Lgnu/expr/Language;->declFromField(Lgnu/expr/ModuleExp;Ljava/lang/Object;Lgnu/bytecode/Field;)Lgnu/expr/Declaration;

    move-result-object v8

    and-int/lit8 v6, v6, 0x10

    if-eqz v6, :cond_5

    .line 193
    instance-of v6, v7, Lgnu/mapping/Location;

    if-eqz v6, :cond_4

    instance-of v6, v7, Lgnu/kawa/reflect/FieldLocation;

    if-eqz v6, :cond_5

    .line 196
    :cond_4
    new-instance v6, Lgnu/expr/QuoteExp;

    invoke-direct {v6, v7}, Lgnu/expr/QuoteExp;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v8, v6}, Lgnu/expr/Declaration;->noteValue(Lgnu/expr/Expression;)V

    goto :goto_2

    .line 198
    :cond_5
    invoke-virtual {v8, v4}, Lgnu/expr/Declaration;->noteValue(Lgnu/expr/Expression;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 181
    :goto_2
    :try_start_3
    invoke-virtual {v2}, Lgnu/bytecode/Field;->getNext()Lgnu/bytecode/Field;

    move-result-object v2

    goto :goto_1

    :catch_0
    move-exception v0

    .line 202
    new-instance v1, Lgnu/mapping/WrappedException;

    invoke-direct {v1, v0}, Lgnu/mapping/WrappedException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 206
    :cond_6
    invoke-virtual {v0}, Lgnu/expr/ModuleExp;->firstDecl()Lgnu/expr/Declaration;

    move-result-object v1

    :goto_3
    if-eqz v1, :cond_7

    .line 209
    invoke-static {v0, v1}, Lgnu/expr/ModuleInfo;->makeDeclInModule2(Lgnu/expr/ModuleExp;Lgnu/expr/Declaration;)V

    .line 207
    invoke-virtual {v1}, Lgnu/expr/Declaration;->nextDecl()Lgnu/expr/Declaration;

    move-result-object v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_3

    .line 211
    :cond_7
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 444
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "ModuleInfo["

    .line 445
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 446
    iget-object v1, p0, Lgnu/expr/ModuleInfo;->moduleClass:Ljava/lang/Class;

    if-eqz v1, :cond_0

    const-string v1, "class: "

    .line 448
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 449
    iget-object v1, p0, Lgnu/expr/ModuleInfo;->moduleClass:Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 451
    :cond_0
    iget-object v1, p0, Lgnu/expr/ModuleInfo;->className:Ljava/lang/String;

    if-eqz v1, :cond_1

    const-string v1, "class-name: "

    .line 453
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 454
    iget-object v1, p0, Lgnu/expr/ModuleInfo;->className:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_1
    :goto_0
    const/16 v1, 0x5d

    .line 456
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 457
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
