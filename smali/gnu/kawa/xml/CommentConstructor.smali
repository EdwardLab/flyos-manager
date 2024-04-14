.class public Lgnu/kawa/xml/CommentConstructor;
.super Lgnu/mapping/MethodProc;
.source "CommentConstructor.java"


# static fields
.field public static final commentConstructor:Lgnu/kawa/xml/CommentConstructor;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 11
    new-instance v0, Lgnu/kawa/xml/CommentConstructor;

    invoke-direct {v0}, Lgnu/kawa/xml/CommentConstructor;-><init>()V

    sput-object v0, Lgnu/kawa/xml/CommentConstructor;->commentConstructor:Lgnu/kawa/xml/CommentConstructor;

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
    .locals 9

    .line 18
    iget-object v0, p1, Lgnu/mapping/CallContext;->consumer:Lgnu/lists/Consumer;

    .line 19
    invoke-static {p1}, Lgnu/kawa/xml/NodeConstructor;->pushNodeContext(Lgnu/mapping/CallContext;)Lgnu/xml/XMLFilter;

    move-result-object v1

    .line 22
    :try_start_0
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 23
    sget-object v3, Lgnu/mapping/Location;->UNBOUND:Ljava/lang/String;

    const/4 v4, 0x1

    .line 27
    :cond_0
    :goto_0
    invoke-virtual {p1, v3}, Lgnu/mapping/CallContext;->getNextArg(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    const/4 v6, 0x0

    if-ne v5, v3, :cond_1

    .line 49
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->length()I

    move-result v3

    .line 50
    new-array v4, v3, [C

    .line 51
    invoke-virtual {v2, v6, v3, v4, v6}, Ljava/lang/StringBuffer;->getChars(II[CI)V

    .line 52
    invoke-interface {v1, v4, v6, v3}, Lgnu/lists/XConsumer;->writeComment([CII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 56
    invoke-static {v0, p1}, Lgnu/kawa/xml/NodeConstructor;->popNodeContext(Lgnu/lists/Consumer;Lgnu/mapping/CallContext;)V

    return-void

    .line 30
    :cond_1
    :try_start_1
    instance-of v7, v5, Lgnu/mapping/Values;

    const/16 v8, 0x20

    if-eqz v7, :cond_3

    .line 32
    check-cast v5, Lgnu/mapping/Values;

    const/4 v7, 0x0

    .line 33
    :goto_1
    invoke-virtual {v5, v7}, Lgnu/mapping/Values;->nextPos(I)I

    move-result v7

    if-eqz v7, :cond_0

    if-nez v4, :cond_2

    .line 36
    invoke-virtual {v2, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 38
    :cond_2
    invoke-virtual {v5, v7}, Lgnu/mapping/Values;->getPosPrevious(I)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4, v2}, Lgnu/xml/TextUtils;->stringValue(Ljava/lang/Object;Ljava/lang/StringBuffer;)V

    const/4 v4, 0x0

    goto :goto_1

    :cond_3
    if-nez v4, :cond_4

    .line 44
    invoke-virtual {v2, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 46
    :cond_4
    invoke-static {v5, v2}, Lgnu/xml/TextUtils;->stringValue(Ljava/lang/Object;Ljava/lang/StringBuffer;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v4, 0x0

    goto :goto_0

    :catchall_0
    move-exception v1

    .line 56
    invoke-static {v0, p1}, Lgnu/kawa/xml/NodeConstructor;->popNodeContext(Lgnu/lists/Consumer;Lgnu/mapping/CallContext;)V

    throw v1
.end method

.method public numArgs()I
    .locals 1

    const/16 v0, 0x1001

    return v0
.end method
