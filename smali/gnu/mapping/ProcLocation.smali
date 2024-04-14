.class public Lgnu/mapping/ProcLocation;
.super Lgnu/mapping/Location;
.source "ProcLocation.java"


# instance fields
.field args:[Ljava/lang/Object;

.field proc:Lgnu/mapping/Procedure;


# direct methods
.method public constructor <init>(Lgnu/mapping/Procedure;[Ljava/lang/Object;)V
    .locals 0

    .line 14
    invoke-direct {p0}, Lgnu/mapping/Location;-><init>()V

    .line 15
    iput-object p1, p0, Lgnu/mapping/ProcLocation;->proc:Lgnu/mapping/Procedure;

    .line 16
    iput-object p2, p0, Lgnu/mapping/ProcLocation;->args:[Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 23
    :try_start_0
    iget-object p1, p0, Lgnu/mapping/ProcLocation;->proc:Lgnu/mapping/Procedure;

    iget-object v0, p0, Lgnu/mapping/ProcLocation;->args:[Ljava/lang/Object;

    invoke-virtual {p1, v0}, Lgnu/mapping/Procedure;->applyN([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    :catchall_0
    move-exception p1

    .line 35
    new-instance v0, Lgnu/mapping/WrappedException;

    invoke-direct {v0, p1}, Lgnu/mapping/WrappedException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :catch_0
    move-exception p1

    .line 31
    throw p1

    :catch_1
    move-exception p1

    .line 27
    throw p1
.end method

.method public isBound()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public set(Ljava/lang/Object;)V
    .locals 3

    .line 41
    iget-object v0, p0, Lgnu/mapping/ProcLocation;->args:[Ljava/lang/Object;

    array-length v1, v0

    add-int/lit8 v2, v1, 0x1

    .line 42
    new-array v2, v2, [Ljava/lang/Object;

    .line 43
    aput-object p1, v2, v1

    const/4 p1, 0x0

    .line 44
    invoke-static {v0, p1, v2, p1, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 47
    :try_start_0
    iget-object p1, p0, Lgnu/mapping/ProcLocation;->proc:Lgnu/mapping/Procedure;

    invoke-virtual {p1, v2}, Lgnu/mapping/Procedure;->setN([Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    .line 59
    new-instance v0, Lgnu/mapping/WrappedException;

    invoke-direct {v0, p1}, Lgnu/mapping/WrappedException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :catch_0
    move-exception p1

    .line 55
    throw p1

    :catch_1
    move-exception p1

    .line 51
    throw p1
.end method
