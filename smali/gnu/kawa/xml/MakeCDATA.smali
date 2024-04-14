.class public Lgnu/kawa/xml/MakeCDATA;
.super Lgnu/mapping/MethodProc;
.source "MakeCDATA.java"


# static fields
.field public static final makeCDATA:Lgnu/kawa/xml/MakeCDATA;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 11
    new-instance v0, Lgnu/kawa/xml/MakeCDATA;

    invoke-direct {v0}, Lgnu/kawa/xml/MakeCDATA;-><init>()V

    sput-object v0, Lgnu/kawa/xml/MakeCDATA;->makeCDATA:Lgnu/kawa/xml/MakeCDATA;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Lgnu/mapping/MethodProc;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Lgnu/mapping/CallContext;)V
    .locals 6

    .line 16
    iget-object v0, p1, Lgnu/mapping/CallContext;->consumer:Lgnu/lists/Consumer;

    .line 17
    invoke-static {p1}, Lgnu/kawa/xml/NodeConstructor;->pushNodeContext(Lgnu/mapping/CallContext;)Lgnu/xml/XMLFilter;

    move-result-object v1

    .line 20
    :try_start_0
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 21
    sget-object v3, Lgnu/mapping/Location;->UNBOUND:Ljava/lang/String;

    .line 24
    :goto_0
    invoke-virtual {p1, v3}, Lgnu/mapping/CallContext;->getNextArg(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-ne v4, v3, :cond_0

    .line 29
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->length()I

    move-result v3

    .line 30
    new-array v4, v3, [C

    const/4 v5, 0x0

    .line 31
    invoke-virtual {v2, v5, v3, v4, v5}, Ljava/lang/StringBuffer;->getChars(II[CI)V

    .line 32
    invoke-interface {v1, v4, v5, v3}, Lgnu/lists/XConsumer;->writeCDATA([CII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 36
    invoke-static {v0, p1}, Lgnu/kawa/xml/NodeConstructor;->popNodeContext(Lgnu/lists/Consumer;Lgnu/mapping/CallContext;)V

    return-void

    .line 27
    :cond_0
    :try_start_1
    invoke-static {v4, v2}, Lgnu/xml/TextUtils;->stringValue(Ljava/lang/Object;Ljava/lang/StringBuffer;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    .line 36
    invoke-static {v0, p1}, Lgnu/kawa/xml/NodeConstructor;->popNodeContext(Lgnu/lists/Consumer;Lgnu/mapping/CallContext;)V

    throw v1
.end method
