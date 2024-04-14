.class public Lkawa/lib/trace;
.super Lgnu/expr/ModuleBody;
.source "trace.scm"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\ntrace.scm\nScheme\n*S Scheme\n*F\n+ 1 trace.scm\n/u2/home/jis/ai2-kawa/kawa/lib/trace.scm\n*L\n1#1,22:1\n*E\n"
.end annotation


# static fields
.field public static final $Pcdo$Mntrace:Lkawa/lang/Macro;

.field public static final $instance:Lkawa/lib/trace;

.field static final Lit0:Lgnu/mapping/SimpleSymbol;

.field static final Lit1:Lkawa/lang/SyntaxRules;

.field static final Lit2:Lgnu/mapping/SimpleSymbol;

.field static final Lit3:Lkawa/lang/SyntaxRules;

.field static final Lit4:Lgnu/mapping/SimpleSymbol;

.field static final Lit5:Lkawa/lang/SyntaxRules;

.field static final Lit6:Lgnu/mapping/SimpleSymbol;

.field static final Lit7:Lgnu/mapping/SimpleSymbol;

.field public static final disassemble:Lgnu/expr/ModuleMethod;

.field public static final trace:Lkawa/lang/Macro;

.field public static final untrace:Lkawa/lang/Macro;


# direct methods
.method public static constructor <clinit>()V
    .locals 26

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v1, "begin"

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lkawa/lib/trace;->Lit7:Lgnu/mapping/SimpleSymbol;

    new-instance v1, Lgnu/mapping/SimpleSymbol;

    const-string v2, "disassemble"

    invoke-direct {v1, v2}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgnu/mapping/SimpleSymbol;

    sput-object v1, Lkawa/lib/trace;->Lit6:Lgnu/mapping/SimpleSymbol;

    new-instance v2, Lkawa/lang/SyntaxRules;

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Object;

    new-instance v5, Lgnu/mapping/SimpleSymbol;

    const-string v6, "untrace"

    invoke-direct {v5, v6}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lgnu/mapping/SimpleSymbol;

    sput-object v5, Lkawa/lib/trace;->Lit4:Lgnu/mapping/SimpleSymbol;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    new-array v7, v3, [Lkawa/lang/SyntaxRule;

    new-instance v14, Lkawa/lang/SyntaxRule;

    new-instance v9, Lkawa/lang/SyntaxPattern;

    new-array v8, v6, [Ljava/lang/Object;

    const-string v15, "\u000c\u0018\r\u0007\u0000\u0008\u0008"

    invoke-direct {v9, v15, v8, v3}, Lkawa/lang/SyntaxPattern;-><init>(Ljava/lang/String;[Ljava/lang/Object;I)V

    const/4 v13, 0x3

    new-array v12, v13, [Ljava/lang/Object;

    aput-object v0, v12, v6

    new-instance v8, Lgnu/mapping/SimpleSymbol;

    const-string v10, "%do-trace"

    invoke-direct {v8, v10}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v8

    move-object v11, v8

    check-cast v11, Lgnu/mapping/SimpleSymbol;

    sput-object v11, Lkawa/lib/trace;->Lit0:Lgnu/mapping/SimpleSymbol;

    aput-object v11, v12, v3

    sget-object v8, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    sget-object v10, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    const-string v3, "/u2/home/jis/ai2-kawa/kawa/lib/trace.scm"

    const v13, 0x1301b

    invoke-static {v8, v10, v3, v13}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v8

    const/4 v13, 0x2

    aput-object v8, v12, v13

    const-string v10, "\u0003"

    const-string v16, "\u0011\u0018\u0004\u0008\u0005\u0011\u0018\u000c\t\u0003\u0018\u0014"

    const/16 v17, 0x1

    move-object v8, v14

    move-object/from16 v18, v11

    move-object/from16 v11, v16

    move/from16 v13, v17

    invoke-direct/range {v8 .. v13}, Lkawa/lang/SyntaxRule;-><init>(Lkawa/lang/SyntaxPattern;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;I)V

    aput-object v14, v7, v6

    const/4 v8, 0x1

    invoke-direct {v2, v4, v7, v8}, Lkawa/lang/SyntaxRules;-><init>([Ljava/lang/Object;[Lkawa/lang/SyntaxRule;I)V

    sput-object v2, Lkawa/lib/trace;->Lit5:Lkawa/lang/SyntaxRules;

    new-instance v4, Lkawa/lang/SyntaxRules;

    new-array v7, v8, [Ljava/lang/Object;

    new-instance v9, Lgnu/mapping/SimpleSymbol;

    const-string v10, "trace"

    invoke-direct {v9, v10}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lgnu/mapping/SimpleSymbol;

    sput-object v9, Lkawa/lib/trace;->Lit2:Lgnu/mapping/SimpleSymbol;

    aput-object v9, v7, v6

    new-array v10, v8, [Lkawa/lang/SyntaxRule;

    new-instance v11, Lkawa/lang/SyntaxRule;

    new-instance v12, Lkawa/lang/SyntaxPattern;

    new-array v13, v6, [Ljava/lang/Object;

    invoke-direct {v12, v15, v13, v8}, Lkawa/lang/SyntaxPattern;-><init>(Ljava/lang/String;[Ljava/lang/Object;I)V

    const/4 v13, 0x3

    new-array v14, v13, [Ljava/lang/Object;

    aput-object v0, v14, v6

    move-object/from16 v0, v18

    aput-object v0, v14, v8

    sget-object v8, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    sget-object v15, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    const v13, 0xe01b

    invoke-static {v8, v15, v3, v13}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v8

    const/4 v13, 0x2

    aput-object v8, v14, v13

    const-string v22, "\u0003"

    const-string v23, "\u0011\u0018\u0004\u0008\u0005\u0011\u0018\u000c\t\u0003\u0018\u0014"

    const/16 v25, 0x1

    move-object/from16 v20, v11

    move-object/from16 v21, v12

    move-object/from16 v24, v14

    invoke-direct/range {v20 .. v25}, Lkawa/lang/SyntaxRule;-><init>(Lkawa/lang/SyntaxPattern;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;I)V

    aput-object v11, v10, v6

    const/4 v8, 0x1

    invoke-direct {v4, v7, v10, v8}, Lkawa/lang/SyntaxRules;-><init>([Ljava/lang/Object;[Lkawa/lang/SyntaxRule;I)V

    sput-object v4, Lkawa/lib/trace;->Lit3:Lkawa/lang/SyntaxRules;

    new-instance v7, Lkawa/lang/SyntaxRules;

    new-array v10, v8, [Ljava/lang/Object;

    aput-object v0, v10, v6

    new-array v11, v8, [Lkawa/lang/SyntaxRule;

    new-instance v8, Lkawa/lang/SyntaxRule;

    new-instance v12, Lkawa/lang/SyntaxPattern;

    new-array v14, v6, [Ljava/lang/Object;

    const-string v15, "\u000c\u0018\u000c\u0007\u000c\u000f\u0008"

    invoke-direct {v12, v15, v14, v13}, Lkawa/lang/SyntaxPattern;-><init>(Ljava/lang/String;[Ljava/lang/Object;I)V

    const/4 v14, 0x4

    new-array v14, v14, [Ljava/lang/Object;

    new-instance v15, Lgnu/mapping/SimpleSymbol;

    const-string v13, "set!"

    invoke-direct {v15, v13}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lgnu/mapping/SimpleSymbol;

    aput-object v13, v14, v6

    new-instance v13, Lgnu/mapping/SimpleSymbol;

    const-string v15, "invoke-static"

    invoke-direct {v13, v15}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lgnu/mapping/SimpleSymbol;

    const/4 v15, 0x1

    aput-object v13, v14, v15

    new-instance v13, Lgnu/mapping/SimpleSymbol;

    const-string v15, "<kawa.standard.TracedProcedure>"

    invoke-direct {v13, v15}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lgnu/mapping/SimpleSymbol;

    const/4 v15, 0x2

    aput-object v13, v14, v15

    new-instance v13, Lgnu/mapping/SimpleSymbol;

    const-string v15, "quote"

    invoke-direct {v13, v15}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lgnu/mapping/SimpleSymbol;

    new-instance v15, Lgnu/mapping/SimpleSymbol;

    const-string v6, "doTrace"

    invoke-direct {v15, v6}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lgnu/mapping/SimpleSymbol;

    sget-object v15, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    move-object/from16 v17, v1

    const v1, 0x8026

    invoke-static {v6, v15, v3, v1}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v6

    invoke-static {v13, v6, v3, v1}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v1

    const/4 v3, 0x3

    aput-object v1, v14, v3

    const-string v21, "\u0001\u0001"

    const-string v22, "\u0011\u0018\u0004\t\u0003\u0008\u0011\u0018\u000c\u0011\u0018\u0014\u0011\u0018\u001c\t\u0003\u0008\u000b"

    const/16 v24, 0x0

    move-object/from16 v19, v8

    move-object/from16 v20, v12

    move-object/from16 v23, v14

    invoke-direct/range {v19 .. v24}, Lkawa/lang/SyntaxRule;-><init>(Lkawa/lang/SyntaxPattern;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;I)V

    const/4 v1, 0x0

    aput-object v8, v11, v1

    const/4 v1, 0x2

    invoke-direct {v7, v10, v11, v1}, Lkawa/lang/SyntaxRules;-><init>([Ljava/lang/Object;[Lkawa/lang/SyntaxRule;I)V

    sput-object v7, Lkawa/lib/trace;->Lit1:Lkawa/lang/SyntaxRules;

    new-instance v1, Lkawa/lib/trace;

    invoke-direct {v1}, Lkawa/lib/trace;-><init>()V

    sput-object v1, Lkawa/lib/trace;->$instance:Lkawa/lib/trace;

    invoke-static {v0, v7, v1}, Lkawa/lang/Macro;->make(Ljava/lang/Object;Lgnu/mapping/Procedure;Ljava/lang/Object;)Lkawa/lang/Macro;

    move-result-object v0

    sput-object v0, Lkawa/lib/trace;->$Pcdo$Mntrace:Lkawa/lang/Macro;

    invoke-static {v9, v4, v1}, Lkawa/lang/Macro;->make(Ljava/lang/Object;Lgnu/mapping/Procedure;Ljava/lang/Object;)Lkawa/lang/Macro;

    move-result-object v0

    sput-object v0, Lkawa/lib/trace;->trace:Lkawa/lang/Macro;

    invoke-static {v5, v2, v1}, Lkawa/lang/Macro;->make(Ljava/lang/Object;Lgnu/mapping/Procedure;Ljava/lang/Object;)Lkawa/lang/Macro;

    move-result-object v0

    sput-object v0, Lkawa/lib/trace;->untrace:Lkawa/lang/Macro;

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/16 v2, 0x1001

    move-object/from16 v3, v17

    const/4 v4, 0x1

    invoke-direct {v0, v1, v4, v3, v2}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v0, Lkawa/lib/trace;->disassemble:Lgnu/expr/ModuleMethod;

    invoke-virtual {v1}, Lgnu/expr/ModuleBody;->run()V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lgnu/expr/ModuleBody;-><init>()V

    invoke-static {p0}, Lgnu/expr/ModuleInfo;->register(Ljava/lang/Object;)V

    return-void
.end method

.method public static disassemble(Lgnu/mapping/Procedure;)Ljava/lang/Object;
    .locals 2

    .line 22
    invoke-static {}, Lgnu/mapping/CallContext;->getInstance()Lgnu/mapping/CallContext;

    move-result-object v0

    invoke-virtual {v0}, Lgnu/mapping/CallContext;->startFromContext()I

    move-result v1

    :try_start_0
    invoke-static {p0, v0}, Lgnu/expr/PrimProcedure;->disassemble$X(Lgnu/mapping/Procedure;Lgnu/mapping/CallContext;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0, v1}, Lgnu/mapping/CallContext;->getFromContext(I)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :catchall_0
    move-exception p0

    invoke-virtual {v0, v1}, Lgnu/mapping/CallContext;->cleanupFromContext(I)V

    throw p0
.end method


# virtual methods
.method public apply1(Lgnu/expr/ModuleMethod;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    iget v0, p1, Lgnu/expr/ModuleMethod;->selector:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 21
    :try_start_0
    check-cast p2, Lgnu/mapping/Procedure;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-static {p2}, Lkawa/lib/trace;->disassemble(Lgnu/mapping/Procedure;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :catch_0
    move-exception p1

    new-instance v0, Lgnu/mapping/WrongType;

    const-string v2, "disassemble"

    invoke-direct {v0, p1, v2, v1, p2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v0

    :cond_0
    invoke-super {p0, p1, p2}, Lgnu/expr/ModuleBody;->apply1(Lgnu/expr/ModuleMethod;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public match1(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Lgnu/mapping/CallContext;)I
    .locals 2

    iget v0, p1, Lgnu/expr/ModuleMethod;->selector:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 21
    instance-of v0, p2, Lgnu/mapping/Procedure;

    if-nez v0, :cond_0

    const p1, -0xbffff

    return p1

    :cond_0
    iput-object p2, p3, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p1, p3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v1, p3, Lgnu/mapping/CallContext;->pc:I

    const/4 p1, 0x0

    return p1

    :cond_1
    invoke-super {p0, p1, p2, p3}, Lgnu/expr/ModuleBody;->match1(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result p1

    return p1
.end method

.method public final run(Lgnu/mapping/CallContext;)V
    .locals 0

    .line 1
    iget-object p1, p1, Lgnu/mapping/CallContext;->consumer:Lgnu/lists/Consumer;

    return-void
.end method
