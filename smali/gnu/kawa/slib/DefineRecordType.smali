.class public Lgnu/kawa/slib/DefineRecordType;
.super Lgnu/expr/ModuleBody;
.source "DefineRecordType.scm"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nDefineRecordType.scm\nScheme\n*S Scheme\n*F\n+ 1 DefineRecordType.scm\n/u2/home/jis/ai2-kawa/gnu/kawa/slib/DefineRecordType.scm\n*L\n19#1:19\n*E\n"
.end annotation


# static fields
.field public static final $Prvt$$Pcdefine$Mnrecord$Mnfield:Lkawa/lang/Macro;

.field public static final $instance:Lgnu/kawa/slib/DefineRecordType;

.field static final Lit0:Lgnu/mapping/SimpleSymbol;

.field static final Lit1:Lkawa/lang/SyntaxRules;

.field static final Lit10:Lgnu/mapping/SimpleSymbol;

.field static final Lit11:Lgnu/mapping/SimpleSymbol;

.field static final Lit12:Lgnu/mapping/SimpleSymbol;

.field static final Lit2:Lgnu/mapping/SimpleSymbol;

.field static final Lit3:Lkawa/lang/SyntaxRules;

.field static final Lit4:Lgnu/mapping/SimpleSymbol;

.field static final Lit5:Lgnu/mapping/SimpleSymbol;

.field static final Lit6:Lgnu/mapping/SimpleSymbol;

.field static final Lit7:Lgnu/mapping/SimpleSymbol;

.field static final Lit8:Lgnu/mapping/SimpleSymbol;

.field static final Lit9:Lgnu/mapping/SimpleSymbol;

.field public static final define$Mnrecord$Mntype:Lkawa/lang/Macro;


# direct methods
.method public static constructor <clinit>()V
    .locals 25

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v1, "tmp"

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lgnu/kawa/slib/DefineRecordType;->Lit12:Lgnu/mapping/SimpleSymbol;

    new-instance v1, Lgnu/mapping/SimpleSymbol;

    const-string v2, "slot-set!"

    invoke-direct {v1, v2}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgnu/mapping/SimpleSymbol;

    sput-object v1, Lgnu/kawa/slib/DefineRecordType;->Lit11:Lgnu/mapping/SimpleSymbol;

    new-instance v2, Lgnu/mapping/SimpleSymbol;

    const-string v3, "begin"

    invoke-direct {v2, v3}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lgnu/mapping/SimpleSymbol;

    sput-object v2, Lgnu/kawa/slib/DefineRecordType;->Lit10:Lgnu/mapping/SimpleSymbol;

    new-instance v3, Lgnu/mapping/SimpleSymbol;

    const-string v4, "value"

    invoke-direct {v3, v4}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lgnu/mapping/SimpleSymbol;

    sput-object v3, Lgnu/kawa/slib/DefineRecordType;->Lit9:Lgnu/mapping/SimpleSymbol;

    new-instance v4, Lgnu/mapping/SimpleSymbol;

    const-string v5, "quote"

    invoke-direct {v4, v5}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lgnu/mapping/SimpleSymbol;

    sput-object v4, Lgnu/kawa/slib/DefineRecordType;->Lit8:Lgnu/mapping/SimpleSymbol;

    new-instance v5, Lgnu/mapping/SimpleSymbol;

    const-string v6, "slot-ref"

    invoke-direct {v5, v6}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lgnu/mapping/SimpleSymbol;

    sput-object v5, Lgnu/kawa/slib/DefineRecordType;->Lit7:Lgnu/mapping/SimpleSymbol;

    new-instance v6, Lgnu/mapping/SimpleSymbol;

    const-string v7, "::"

    invoke-direct {v6, v7}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lgnu/mapping/SimpleSymbol;

    sput-object v6, Lgnu/kawa/slib/DefineRecordType;->Lit6:Lgnu/mapping/SimpleSymbol;

    new-instance v7, Lgnu/mapping/SimpleSymbol;

    const-string v8, "obj"

    invoke-direct {v7, v8}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lgnu/mapping/SimpleSymbol;

    sput-object v7, Lgnu/kawa/slib/DefineRecordType;->Lit5:Lgnu/mapping/SimpleSymbol;

    new-instance v8, Lgnu/mapping/SimpleSymbol;

    const-string v9, "define"

    invoke-direct {v8, v9}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lgnu/mapping/SimpleSymbol;

    sput-object v8, Lgnu/kawa/slib/DefineRecordType;->Lit4:Lgnu/mapping/SimpleSymbol;

    new-instance v9, Lkawa/lang/SyntaxRules;

    const/4 v10, 0x1

    new-array v11, v10, [Ljava/lang/Object;

    new-instance v12, Lgnu/mapping/SimpleSymbol;

    const-string v13, "%define-record-field"

    invoke-direct {v12, v13}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lgnu/mapping/SimpleSymbol;

    sput-object v12, Lgnu/kawa/slib/DefineRecordType;->Lit2:Lgnu/mapping/SimpleSymbol;

    const/4 v13, 0x0

    aput-object v12, v11, v13

    const/4 v14, 0x2

    new-array v15, v14, [Lkawa/lang/SyntaxRule;

    new-instance v22, Lkawa/lang/SyntaxRule;

    new-instance v14, Lkawa/lang/SyntaxPattern;

    new-array v10, v13, [Ljava/lang/Object;

    const-string v13, "\u000c\u0018\u000c\u0007\u000c\u000f\u000c\u0017\u0008"

    move-object/from16 v23, v12

    const/4 v12, 0x3

    invoke-direct {v14, v13, v10, v12}, Lkawa/lang/SyntaxPattern;-><init>(Ljava/lang/String;[Ljava/lang/Object;I)V

    const/4 v10, 0x5

    new-array v13, v10, [Ljava/lang/Object;

    const/16 v16, 0x0

    aput-object v8, v13, v16

    const/16 v16, 0x1

    aput-object v7, v13, v16

    const/16 v16, 0x2

    aput-object v6, v13, v16

    aput-object v5, v13, v12

    const/4 v10, 0x4

    aput-object v4, v13, v10

    const-string v18, "\u0001\u0001\u0001"

    const-string v19, "\u0011\u0018\u0004Y\t\u0013\u0008\u0011\u0018\u000c\u0011\u0018\u0014\u0008\u0003\u0008\u0011\u0018\u001c\u0011\u0018\u000c\u0008\u0011\u0018$\u0008\u000b"

    const/16 v21, 0x0

    move-object/from16 v16, v22

    move-object/from16 v17, v14

    move-object/from16 v20, v13

    invoke-direct/range {v16 .. v21}, Lkawa/lang/SyntaxRule;-><init>(Lkawa/lang/SyntaxPattern;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;I)V

    const/4 v13, 0x0

    aput-object v22, v15, v13

    new-instance v14, Lkawa/lang/SyntaxRule;

    new-instance v12, Lkawa/lang/SyntaxPattern;

    move-object/from16 v24, v0

    new-array v0, v13, [Ljava/lang/Object;

    const-string v13, "\u000c\u0018\u000c\u0007\u000c\u000f\u000c\u0017\u000c\u001f\u0008"

    invoke-direct {v12, v13, v0, v10}, Lkawa/lang/SyntaxPattern;-><init>(Ljava/lang/String;[Ljava/lang/Object;I)V

    const/16 v0, 0xa

    new-array v13, v0, [Ljava/lang/Object;

    const/16 v16, 0x0

    aput-object v2, v13, v16

    const/16 v16, 0x1

    aput-object v8, v13, v16

    const/16 v16, 0x2

    aput-object v7, v13, v16

    const/16 v16, 0x3

    aput-object v6, v13, v16

    aput-object v5, v13, v10

    const/4 v5, 0x5

    aput-object v4, v13, v5

    sget-object v5, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    const-string v0, "/u2/home/jis/ai2-kawa/gnu/kawa/slib/DefineRecordType.scm"

    const v10, 0x33028

    invoke-static {v3, v5, v0, v10}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v5

    const/4 v10, 0x6

    aput-object v5, v13, v10

    new-instance v5, Lgnu/mapping/SimpleSymbol;

    const-string v10, "<void>"

    invoke-direct {v5, v10}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lgnu/mapping/SimpleSymbol;

    const/4 v10, 0x7

    aput-object v5, v13, v10

    const/16 v5, 0x8

    aput-object v1, v13, v5

    sget-object v5, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    const v10, 0x3401d

    invoke-static {v3, v5, v0, v10}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v3

    const/16 v5, 0x9

    aput-object v3, v13, v5

    const-string v18, "\u0001\u0001\u0001\u0001"

    const-string v19, "\u0011\u0018\u0004\u00e1\u0011\u0018\u000cY\t\u0013\u0008\u0011\u0018\u0014\u0011\u0018\u001c\u0008\u0003\u0008\u0011\u0018$\u0011\u0018\u0014\u0008\u0011\u0018,\u0008\u000b\u0008\u0011\u0018\u000ci\t\u001bA\u0011\u0018\u0014\u0011\u0018\u001c\u0008\u0003\u00184\u0011\u0018\u001c\u0011\u0018<\u0008\u0011\u0018D\u0011\u0018\u0014)\u0011\u0018,\u0008\u000b\u0018L"

    move-object/from16 v16, v14

    move-object/from16 v17, v12

    move-object/from16 v20, v13

    invoke-direct/range {v16 .. v21}, Lkawa/lang/SyntaxRule;-><init>(Lkawa/lang/SyntaxPattern;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;I)V

    const/4 v3, 0x1

    aput-object v14, v15, v3

    const/4 v10, 0x4

    invoke-direct {v9, v11, v15, v10}, Lkawa/lang/SyntaxRules;-><init>([Ljava/lang/Object;[Lkawa/lang/SyntaxRule;I)V

    sput-object v9, Lgnu/kawa/slib/DefineRecordType;->Lit3:Lkawa/lang/SyntaxRules;

    new-instance v10, Lkawa/lang/SyntaxRules;

    new-array v11, v3, [Ljava/lang/Object;

    new-instance v12, Lgnu/mapping/SimpleSymbol;

    const-string v13, "define-record-type"

    invoke-direct {v12, v13}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lgnu/mapping/SimpleSymbol;

    sput-object v12, Lgnu/kawa/slib/DefineRecordType;->Lit0:Lgnu/mapping/SimpleSymbol;

    const/4 v13, 0x0

    aput-object v12, v11, v13

    new-array v14, v3, [Lkawa/lang/SyntaxRule;

    new-instance v3, Lkawa/lang/SyntaxRule;

    new-instance v15, Lkawa/lang/SyntaxPattern;

    new-array v5, v13, [Ljava/lang/Object;

    const-string v13, "\u000c\u0018\u000c\u0007<\u000c\u000f\r\u0017\u0010\u0008\u0008\u000c\u001f-\u000c\'\u000c/3 \u0018\u0008"

    move-object/from16 v21, v9

    const/4 v9, 0x7

    invoke-direct {v15, v13, v5, v9}, Lkawa/lang/SyntaxPattern;-><init>(Ljava/lang/String;[Ljava/lang/Object;I)V

    const/16 v5, 0xf

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v2, v5, v9

    new-instance v2, Lgnu/mapping/SimpleSymbol;

    const-string v9, "define-simple-class"

    invoke-direct {v2, v9}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lgnu/mapping/SimpleSymbol;

    const/4 v9, 0x1

    aput-object v2, v5, v9

    const/4 v2, 0x2

    aput-object v8, v5, v2

    sget-object v2, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    const v8, 0x1e01b

    invoke-static {v7, v2, v0, v8}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v2

    const/4 v8, 0x3

    aput-object v2, v5, v8

    const/4 v2, 0x4

    aput-object v6, v5, v2

    new-instance v2, Lgnu/mapping/SimpleSymbol;

    const-string v6, "<boolean>"

    invoke-direct {v2, v6}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lgnu/mapping/SimpleSymbol;

    const/4 v6, 0x5

    aput-object v2, v5, v6

    new-instance v2, Lgnu/mapping/SimpleSymbol;

    const-string v6, "instance?"

    invoke-direct {v2, v6}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lgnu/mapping/SimpleSymbol;

    const/4 v6, 0x6

    aput-object v2, v5, v6

    const/4 v2, 0x7

    aput-object v7, v5, v2

    new-instance v2, Lgnu/mapping/SimpleSymbol;

    const-string v6, "let"

    invoke-direct {v2, v6}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lgnu/mapping/SimpleSymbol;

    const/16 v6, 0x8

    aput-object v2, v5, v6

    const/16 v2, 0x9

    aput-object v24, v5, v2

    new-instance v2, Lgnu/mapping/SimpleSymbol;

    const-string v6, "make"

    invoke-direct {v2, v6}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lgnu/mapping/SimpleSymbol;

    const/16 v6, 0xa

    aput-object v2, v5, v6

    const/16 v2, 0xb

    aput-object v1, v5, v2

    const/16 v1, 0xc

    aput-object v4, v5, v1

    sget-object v1, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    const v2, 0x23005

    move-object/from16 v4, v24

    invoke-static {v4, v1, v0, v2}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v0

    const/16 v1, 0xd

    aput-object v0, v5, v1

    const/16 v0, 0xe

    aput-object v23, v5, v0

    const-string v17, "\u0001\u0001\u0003\u0001\u0003\u0003\u0002"

    const-string v18, "\u0011\u0018\u0004Y\u0011\u0018\u000c\t\u0003\t\u0010\u0008%\u0008#\u00b9\u0011\u0018\u0014!\t\u001b\u0018\u001c\u0011\u0018$\u0011\u0018,\u0008\u0011\u00184\u0011\u0018<\u0008\u0003\u01c1\u0011\u0018\u0014)\t\u000b\u0008\u0015\u0013\u0011\u0018$\t\u0003\u0008\u0011\u0018Dy\u0008\u0011\u0018L\u0011\u0018$\t\u0003\u0008\u0011\u0018T\u0008\u0003\u0099\u0011\u0018\u0004\u0008\u0015\u0011\u0018\\\u0011\u0018L)\u0011\u0018d\u0008\u0013\u0008\u0013\u0018l\u0008%\u0011\u0018t\t\u0003\t#\t+2"

    const/16 v20, 0x1

    move-object v0, v15

    move-object v15, v3

    move-object/from16 v16, v0

    move-object/from16 v19, v5

    invoke-direct/range {v15 .. v20}, Lkawa/lang/SyntaxRule;-><init>(Lkawa/lang/SyntaxPattern;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;I)V

    const/4 v0, 0x0

    aput-object v3, v14, v0

    const/4 v0, 0x7

    invoke-direct {v10, v11, v14, v0}, Lkawa/lang/SyntaxRules;-><init>([Ljava/lang/Object;[Lkawa/lang/SyntaxRule;I)V

    sput-object v10, Lgnu/kawa/slib/DefineRecordType;->Lit1:Lkawa/lang/SyntaxRules;

    new-instance v0, Lgnu/kawa/slib/DefineRecordType;

    invoke-direct {v0}, Lgnu/kawa/slib/DefineRecordType;-><init>()V

    sput-object v0, Lgnu/kawa/slib/DefineRecordType;->$instance:Lgnu/kawa/slib/DefineRecordType;

    .line 19
    invoke-static {v12, v10, v0}, Lkawa/lang/Macro;->make(Ljava/lang/Object;Lgnu/mapping/Procedure;Ljava/lang/Object;)Lkawa/lang/Macro;

    move-result-object v1

    sput-object v1, Lgnu/kawa/slib/DefineRecordType;->define$Mnrecord$Mntype:Lkawa/lang/Macro;

    move-object/from16 v1, v21

    move-object/from16 v12, v23

    invoke-static {v12, v1, v0}, Lkawa/lang/Macro;->make(Ljava/lang/Object;Lgnu/mapping/Procedure;Ljava/lang/Object;)Lkawa/lang/Macro;

    move-result-object v1

    sput-object v1, Lgnu/kawa/slib/DefineRecordType;->$Prvt$$Pcdefine$Mnrecord$Mnfield:Lkawa/lang/Macro;

    invoke-virtual {v0}, Lgnu/expr/ModuleBody;->run()V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lgnu/expr/ModuleBody;-><init>()V

    invoke-static {p0}, Lgnu/expr/ModuleInfo;->register(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final run(Lgnu/mapping/CallContext;)V
    .locals 0

    .line 19
    iget-object p1, p1, Lgnu/mapping/CallContext;->consumer:Lgnu/lists/Consumer;

    return-void
.end method
