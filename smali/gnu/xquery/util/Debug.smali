.class public Lgnu/xquery/util/Debug;
.super Ljava/lang/Object;
.source "Debug.java"


# static fields
.field public static traceFilename:Ljava/lang/String; = "XQuery-trace.log"

.field public static tracePort:Lgnu/mapping/OutPort; = null

.field public static tracePrefix:Ljava/lang/String; = "XQuery-trace: "

.field public static traceShouldAppend:Z = false

.field public static traceShouldFlush:Z = true


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized trace(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    const-class v0, Lgnu/xquery/util/Debug;

    monitor-enter v0

    .line 15
    :try_start_0
    sget-object v1, Lgnu/xquery/util/Debug;->tracePort:Lgnu/mapping/OutPort;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v1, :cond_0

    .line 20
    :try_start_1
    new-instance v2, Lgnu/mapping/OutPort;

    new-instance v3, Ljava/io/FileOutputStream;

    sget-object v4, Lgnu/xquery/util/Debug;->traceFilename:Ljava/lang/String;

    sget-boolean v5, Lgnu/xquery/util/Debug;->traceShouldAppend:Z

    invoke-direct {v3, v4, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;Z)V

    invoke-direct {v2, v3}, Lgnu/mapping/OutPort;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v1, v2

    goto :goto_0

    :catchall_0
    move-exception v2

    .line 25
    :try_start_2
    new-instance v3, Lgnu/mapping/WrappedException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Could not open \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v5, Lgnu/xquery/util/Debug;->traceFilename:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\' for fn:trace output"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v2}, Lgnu/mapping/WrappedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 28
    :goto_0
    sput-object v1, Lgnu/xquery/util/Debug;->tracePort:Lgnu/mapping/OutPort;

    .line 30
    :cond_0
    sget-object v2, Lgnu/xquery/util/Debug;->tracePrefix:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lgnu/mapping/OutPort;->print(Ljava/lang/String;)V

    .line 31
    invoke-virtual {v1, p1}, Lgnu/mapping/OutPort;->print(Ljava/lang/Object;)V

    const/16 p1, 0x20

    .line 32
    invoke-virtual {v1, p1}, Lgnu/mapping/OutPort;->print(C)V

    .line 33
    new-instance p1, Lgnu/xml/XMLPrinter;

    const/4 v2, 0x0

    invoke-direct {p1, v1, v2}, Lgnu/xml/XMLPrinter;-><init>(Lgnu/mapping/OutPort;Z)V

    .line 34
    invoke-virtual {p1, p0}, Lgnu/xml/XMLPrinter;->writeObject(Ljava/lang/Object;)V

    .line 35
    invoke-virtual {v1}, Lgnu/mapping/OutPort;->println()V

    .line 36
    sget-boolean p1, Lgnu/xquery/util/Debug;->traceShouldFlush:Z

    if-eqz p1, :cond_1

    .line 37
    invoke-virtual {v1}, Lgnu/mapping/OutPort;->flush()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 38
    :cond_1
    monitor-exit v0

    return-object p0

    :catchall_1
    move-exception p0

    monitor-exit v0

    throw p0
.end method
