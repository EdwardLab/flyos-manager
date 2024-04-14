.class public Lgnu/kawa/slib/conditions;
.super Lgnu/expr/ModuleBody;
.source "conditions.scm"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lgnu/kawa/slib/condition$Mntype;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nconditions.scm\nScheme\n*S Scheme\n*F\n+ 1 conditions.scm\n/u2/home/jis/ai2-kawa/gnu/kawa/slib/conditions.scm\n+ 2 std_syntax.scm\n/u2/home/jis/ai2-kawa/kawa/lib/std_syntax.scm\n*L\n28#1,205:28\n30#2:10000\n*E\n"
.end annotation


# static fields
.field public static $Amcondition:Ljava/lang/Object;

.field public static $Amerror:Ljava/lang/Object;

.field public static $Ammessage:Ljava/lang/Object;

.field public static $Amserious:Ljava/lang/Object;

.field static final $Lscondition$Mntype$Gr:Ljava/lang/Class;

.field public static final $Prvt$$Lscondition$Gr:Ljava/lang/Class;

.field public static final $Prvt$type$Mnfield$Mnalist$Mn$Grcondition:Lgnu/expr/ModuleMethod;

.field public static final $instance:Lgnu/kawa/slib/conditions;

.field static final Lit0:Lgnu/mapping/SimpleSymbol;

.field static final Lit1:Lgnu/mapping/SimpleSymbol;

.field static final Lit10:Lgnu/mapping/SimpleSymbol;

.field static final Lit11:Lgnu/mapping/SimpleSymbol;

.field static final Lit12:Lgnu/mapping/SimpleSymbol;

.field static final Lit13:Lgnu/mapping/SimpleSymbol;

.field static final Lit14:Lkawa/lang/SyntaxRules;

.field static final Lit15:Lgnu/mapping/SimpleSymbol;

.field static final Lit16:Lgnu/mapping/SimpleSymbol;

.field static final Lit17:Lgnu/mapping/SimpleSymbol;

.field static final Lit18:Lgnu/mapping/SimpleSymbol;

.field static final Lit19:Lkawa/lang/SyntaxRules;

.field static final Lit2:Lgnu/lists/PairWithPosition;

.field static final Lit20:Lgnu/mapping/SimpleSymbol;

.field static final Lit21:Lgnu/mapping/SimpleSymbol;

.field static final Lit22:Lgnu/mapping/SimpleSymbol;

.field static final Lit3:Lgnu/mapping/SimpleSymbol;

.field static final Lit4:Lgnu/mapping/SimpleSymbol;

.field static final Lit5:Lgnu/mapping/SimpleSymbol;

.field static final Lit6:Lgnu/mapping/SimpleSymbol;

.field static final Lit7:Lgnu/mapping/SimpleSymbol;

.field static final Lit8:Lgnu/mapping/SimpleSymbol;

.field static final Lit9:Lkawa/lang/SyntaxRules;

.field public static final condition:Lkawa/lang/Macro;

.field public static final condition$Mnhas$Mntype$Qu:Lgnu/expr/ModuleMethod;

.field public static final condition$Mnref:Lgnu/expr/ModuleMethod;

.field static final condition$Mntype$Mnfield$Mnalist:Lkawa/lang/Macro;

.field public static final condition$Mntype$Qu:Lgnu/expr/ModuleMethod;

.field public static final condition$Qu:Lgnu/expr/ModuleMethod;

.field public static final define$Mncondition$Mntype:Lkawa/lang/Macro;

.field public static final extract$Mncondition:Lgnu/expr/ModuleMethod;

.field public static final make$Mncompound$Mncondition:Lgnu/expr/ModuleMethod;

.field public static final make$Mncondition:Lgnu/expr/ModuleMethod;

.field public static final make$Mncondition$Mntype:Lgnu/expr/ModuleMethod;


# direct methods
.method public static constructor <clinit>()V
    .locals 31

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v1, "thing"

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lgnu/kawa/slib/conditions;->Lit22:Lgnu/mapping/SimpleSymbol;

    new-instance v1, Lgnu/mapping/SimpleSymbol;

    const-string v2, "quote"

    invoke-direct {v1, v2}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgnu/mapping/SimpleSymbol;

    sput-object v1, Lgnu/kawa/slib/conditions;->Lit21:Lgnu/mapping/SimpleSymbol;

    new-instance v2, Lgnu/mapping/SimpleSymbol;

    const-string v3, "type-field-alist->condition"

    invoke-direct {v2, v3}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lgnu/mapping/SimpleSymbol;

    sput-object v2, Lgnu/kawa/slib/conditions;->Lit20:Lgnu/mapping/SimpleSymbol;

    new-instance v3, Lkawa/lang/SyntaxRules;

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Object;

    new-instance v6, Lgnu/mapping/SimpleSymbol;

    const-string v7, "condition"

    invoke-direct {v6, v7}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lgnu/mapping/SimpleSymbol;

    sput-object v6, Lgnu/kawa/slib/conditions;->Lit18:Lgnu/mapping/SimpleSymbol;

    const/4 v7, 0x0

    aput-object v6, v5, v7

    new-array v8, v4, [Lkawa/lang/SyntaxRule;

    new-instance v15, Lkawa/lang/SyntaxRule;

    new-instance v10, Lkawa/lang/SyntaxPattern;

    new-array v9, v7, [Ljava/lang/Object;

    const-string v11, "\u000c\u0018]\u000c\u0007-\u000c\u000f\u000c\u0017\u0008\u0008\u0010\u0008\u0000\u0018\u0008"

    const/4 v14, 0x3

    invoke-direct {v10, v11, v9, v14}, Lkawa/lang/SyntaxPattern;-><init>(Ljava/lang/String;[Ljava/lang/Object;I)V

    const/4 v13, 0x4

    new-array v12, v13, [Ljava/lang/Object;

    aput-object v2, v12, v7

    new-instance v9, Lgnu/mapping/SimpleSymbol;

    const-string v11, "list"

    invoke-direct {v9, v11}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lgnu/mapping/SimpleSymbol;

    aput-object v9, v12, v4

    new-instance v9, Lgnu/mapping/SimpleSymbol;

    const-string v11, "cons"

    invoke-direct {v9, v11}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lgnu/mapping/SimpleSymbol;

    const/4 v11, 0x2

    aput-object v9, v12, v11

    aput-object v1, v12, v14

    const-string v16, "\u0003\u0005\u0005"

    const-string v17, "\u0011\u0018\u0004\u0008\u0011\u0018\u000c\u0008\u0005\u0011\u0018\u0014\t\u0003\u0008\u0011\u0018\u000c\u0008\r\u0011\u0018\u0014)\u0011\u0018\u001c\u0008\u000b\u0008\u0013"

    const/16 v18, 0x2

    move-object v9, v15

    move-object/from16 v11, v16

    move-object/from16 v16, v12

    move-object/from16 v12, v17

    move-object/from16 v13, v16

    const/4 v4, 0x3

    move/from16 v14, v18

    invoke-direct/range {v9 .. v14}, Lkawa/lang/SyntaxRule;-><init>(Lkawa/lang/SyntaxPattern;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;I)V

    aput-object v15, v8, v7

    invoke-direct {v3, v5, v8, v4}, Lkawa/lang/SyntaxRules;-><init>([Ljava/lang/Object;[Lkawa/lang/SyntaxRule;I)V

    sput-object v3, Lgnu/kawa/slib/conditions;->Lit19:Lkawa/lang/SyntaxRules;

    new-instance v5, Lgnu/mapping/SimpleSymbol;

    const-string v8, "extract-condition"

    invoke-direct {v5, v8}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lgnu/mapping/SimpleSymbol;

    sput-object v5, Lgnu/kawa/slib/conditions;->Lit17:Lgnu/mapping/SimpleSymbol;

    new-instance v8, Lgnu/mapping/SimpleSymbol;

    const-string v9, "make-compound-condition"

    invoke-direct {v8, v9}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lgnu/mapping/SimpleSymbol;

    sput-object v8, Lgnu/kawa/slib/conditions;->Lit16:Lgnu/mapping/SimpleSymbol;

    new-instance v9, Lgnu/mapping/SimpleSymbol;

    const-string v10, "condition-ref"

    invoke-direct {v9, v10}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lgnu/mapping/SimpleSymbol;

    sput-object v9, Lgnu/kawa/slib/conditions;->Lit15:Lgnu/mapping/SimpleSymbol;

    new-instance v10, Lkawa/lang/SyntaxRules;

    const/4 v11, 0x1

    new-array v12, v11, [Ljava/lang/Object;

    new-instance v13, Lgnu/mapping/SimpleSymbol;

    const-string v14, "condition-type-field-alist"

    invoke-direct {v13, v14}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lgnu/mapping/SimpleSymbol;

    sput-object v13, Lgnu/kawa/slib/conditions;->Lit13:Lgnu/mapping/SimpleSymbol;

    aput-object v13, v12, v7

    new-array v14, v11, [Lkawa/lang/SyntaxRule;

    new-instance v15, Lkawa/lang/SyntaxRule;

    new-instance v4, Lkawa/lang/SyntaxPattern;

    move-object/from16 v18, v2

    new-array v2, v7, [Ljava/lang/Object;

    const-string v7, "\u000c\u0018\u000c\u0007\u0008"

    invoke-direct {v4, v7, v2, v11}, Lkawa/lang/SyntaxPattern;-><init>(Ljava/lang/String;[Ljava/lang/Object;I)V

    const/4 v2, 0x3

    new-array v7, v2, [Ljava/lang/Object;

    new-instance v2, Lgnu/mapping/SimpleSymbol;

    const-string v11, "$lookup$"

    invoke-direct {v2, v11}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lgnu/mapping/SimpleSymbol;

    new-instance v11, Lgnu/mapping/SimpleSymbol;

    move-object/from16 v25, v3

    const-string v3, "*"

    invoke-direct {v11, v3}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lgnu/mapping/SimpleSymbol;

    new-instance v11, Lgnu/mapping/SimpleSymbol;

    move-object/from16 v26, v8

    const-string v8, "quasiquote"

    invoke-direct {v11, v8}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lgnu/mapping/SimpleSymbol;

    new-instance v11, Lgnu/mapping/SimpleSymbol;

    move-object/from16 v27, v13

    const-string v13, ".type-field-alist"

    invoke-direct {v11, v13}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lgnu/mapping/SimpleSymbol;

    sget-object v13, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    invoke-static {v11, v13}, Lgnu/lists/Pair;->make(Ljava/lang/Object;Ljava/lang/Object;)Lgnu/lists/Pair;

    move-result-object v11

    invoke-static {v8, v11}, Lgnu/lists/Pair;->make(Ljava/lang/Object;Ljava/lang/Object;)Lgnu/lists/Pair;

    move-result-object v8

    sget-object v11, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    invoke-static {v8, v11}, Lgnu/lists/Pair;->make(Ljava/lang/Object;Ljava/lang/Object;)Lgnu/lists/Pair;

    move-result-object v8

    invoke-static {v3, v8}, Lgnu/lists/Pair;->make(Ljava/lang/Object;Ljava/lang/Object;)Lgnu/lists/Pair;

    move-result-object v3

    const-string v8, "/u2/home/jis/ai2-kawa/gnu/kawa/slib/conditions.scm"

    const v11, 0x8e007

    invoke-static {v2, v3, v8, v11}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v7, v3

    new-instance v2, Lgnu/mapping/SimpleSymbol;

    const-string v3, "as"

    invoke-direct {v2, v3}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lgnu/mapping/SimpleSymbol;

    const/4 v3, 0x1

    aput-object v2, v7, v3

    new-instance v2, Lgnu/mapping/SimpleSymbol;

    const-string v3, "<condition>"

    invoke-direct {v2, v3}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lgnu/mapping/SimpleSymbol;

    const/4 v3, 0x2

    aput-object v2, v7, v3

    const-string v21, "\u0001"

    const-string v22, "\u0011\u0018\u0004\u0008\u0011\u0018\u000c\u0011\u0018\u0014\u0008\u0003"

    const/16 v24, 0x0

    move-object/from16 v19, v15

    move-object/from16 v20, v4

    move-object/from16 v23, v7

    invoke-direct/range {v19 .. v24}, Lkawa/lang/SyntaxRule;-><init>(Lkawa/lang/SyntaxPattern;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;I)V

    const/4 v2, 0x0

    aput-object v15, v14, v2

    const/4 v2, 0x1

    invoke-direct {v10, v12, v14, v2}, Lkawa/lang/SyntaxRules;-><init>([Ljava/lang/Object;[Lkawa/lang/SyntaxRule;I)V

    sput-object v10, Lgnu/kawa/slib/conditions;->Lit14:Lkawa/lang/SyntaxRules;

    new-instance v2, Lgnu/mapping/SimpleSymbol;

    const-string v4, "condition-has-type?"

    invoke-direct {v2, v4}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lgnu/mapping/SimpleSymbol;

    sput-object v2, Lgnu/kawa/slib/conditions;->Lit12:Lgnu/mapping/SimpleSymbol;

    new-instance v4, Lgnu/mapping/SimpleSymbol;

    const-string v7, "make-condition"

    invoke-direct {v4, v7}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lgnu/mapping/SimpleSymbol;

    sput-object v4, Lgnu/kawa/slib/conditions;->Lit11:Lgnu/mapping/SimpleSymbol;

    new-instance v7, Lgnu/mapping/SimpleSymbol;

    const-string v11, "condition?"

    invoke-direct {v7, v11}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lgnu/mapping/SimpleSymbol;

    sput-object v7, Lgnu/kawa/slib/conditions;->Lit10:Lgnu/mapping/SimpleSymbol;

    new-instance v11, Lkawa/lang/SyntaxRules;

    const/4 v12, 0x1

    new-array v13, v12, [Ljava/lang/Object;

    new-instance v14, Lgnu/mapping/SimpleSymbol;

    const-string v15, "define-condition-type"

    invoke-direct {v14, v15}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lgnu/mapping/SimpleSymbol;

    sput-object v14, Lgnu/kawa/slib/conditions;->Lit8:Lgnu/mapping/SimpleSymbol;

    const/4 v15, 0x0

    aput-object v14, v13, v15

    new-array v3, v12, [Lkawa/lang/SyntaxRule;

    new-instance v12, Lkawa/lang/SyntaxRule;

    move-object/from16 v28, v10

    new-instance v10, Lkawa/lang/SyntaxPattern;

    move-object/from16 v29, v4

    new-array v4, v15, [Ljava/lang/Object;

    const-string v15, "\u000c\u0018\u000c\u0007\u000c\u000f\u000c\u0017-\u000c\u001f\u000c\'\u0008\u0018\u0010\u0008"

    move-object/from16 v30, v14

    const/4 v14, 0x5

    invoke-direct {v10, v15, v4, v14}, Lkawa/lang/SyntaxPattern;-><init>(Ljava/lang/String;[Ljava/lang/Object;I)V

    const/16 v4, 0xd

    new-array v4, v4, [Ljava/lang/Object;

    new-instance v15, Lgnu/mapping/SimpleSymbol;

    const-string v14, "begin"

    invoke-direct {v15, v14}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lgnu/mapping/SimpleSymbol;

    const/4 v15, 0x0

    aput-object v14, v4, v15

    new-instance v14, Lgnu/mapping/SimpleSymbol;

    const-string v15, "define"

    invoke-direct {v14, v15}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lgnu/mapping/SimpleSymbol;

    const/4 v15, 0x1

    aput-object v14, v4, v15

    new-instance v14, Lgnu/mapping/SimpleSymbol;

    const-string v15, "make-condition-type"

    invoke-direct {v14, v15}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lgnu/mapping/SimpleSymbol;

    sput-object v14, Lgnu/kawa/slib/conditions;->Lit7:Lgnu/mapping/SimpleSymbol;

    const/4 v15, 0x2

    aput-object v14, v4, v15

    const/4 v15, 0x3

    aput-object v1, v4, v15

    sget-object v1, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    const v15, 0x5001c

    invoke-static {v0, v1, v8, v15}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v1

    const/4 v15, 0x4

    aput-object v1, v4, v15

    new-instance v1, Lgnu/mapping/SimpleSymbol;

    const-string v15, "and"

    invoke-direct {v1, v15}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgnu/mapping/SimpleSymbol;

    const/4 v15, 0x5

    aput-object v1, v4, v15

    sget-object v1, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    const v15, 0x5101b

    invoke-static {v0, v1, v8, v15}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v1

    const v15, 0x5100f

    invoke-static {v7, v1, v8, v15}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v1

    const/4 v15, 0x6

    aput-object v1, v4, v15

    const/4 v1, 0x7

    aput-object v2, v4, v1

    const/16 v1, 0x8

    aput-object v0, v4, v1

    sget-object v0, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    const v1, 0x5301c

    invoke-static {v6, v0, v8, v1}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v0

    const/16 v1, 0x9

    aput-object v0, v4, v1

    const/16 v0, 0xa

    aput-object v9, v4, v0

    const/16 v19, 0xb

    aput-object v5, v4, v19

    const/16 v19, 0xc

    aput-object v6, v4, v19

    const-string v21, "\u0001\u0001\u0001\u0003\u0003"

    const-string v22, "\u0011\u0018\u0004\u00c9\u0011\u0018\u000c\t\u0003\u0008\u0011\u0018\u0014)\u0011\u0018\u001c\u0008\u0003\t\u000b\u0008\u0011\u0018\u001c\u0008\u0008\u001d\u001b\u00c1\u0011\u0018\u000c!\t\u0013\u0018$\u0008\u0011\u0018,\u0011\u00184\u0008\u0011\u0018<\u0011\u0018D\u0008\u0003\u0008%\u0011\u0018\u000c!\t#\u0018L\u0008\u0011\u0018TA\u0011\u0018\\\u0011\u0018d\u0008\u0003\u0008\u0011\u0018\u001c\u0008\u001b"

    const/16 v24, 0x1

    move-object/from16 v19, v12

    move-object/from16 v20, v10

    move-object/from16 v23, v4

    invoke-direct/range {v19 .. v24}, Lkawa/lang/SyntaxRule;-><init>(Lkawa/lang/SyntaxPattern;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;I)V

    const/4 v4, 0x0

    aput-object v12, v3, v4

    const/4 v4, 0x5

    invoke-direct {v11, v13, v3, v4}, Lkawa/lang/SyntaxRules;-><init>([Ljava/lang/Object;[Lkawa/lang/SyntaxRule;I)V

    sput-object v11, Lgnu/kawa/slib/conditions;->Lit9:Lkawa/lang/SyntaxRules;

    new-instance v3, Lgnu/mapping/SimpleSymbol;

    const-string v4, "condition-type?"

    invoke-direct {v3, v4}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lgnu/mapping/SimpleSymbol;

    sput-object v3, Lgnu/kawa/slib/conditions;->Lit6:Lgnu/mapping/SimpleSymbol;

    new-instance v4, Lgnu/mapping/SimpleSymbol;

    const-string v10, "message"

    invoke-direct {v4, v10}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lgnu/mapping/SimpleSymbol;

    sput-object v4, Lgnu/kawa/slib/conditions;->Lit5:Lgnu/mapping/SimpleSymbol;

    new-instance v10, Lgnu/mapping/SimpleSymbol;

    const-string v12, "&error"

    invoke-direct {v10, v12}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lgnu/mapping/SimpleSymbol;

    sput-object v10, Lgnu/kawa/slib/conditions;->Lit4:Lgnu/mapping/SimpleSymbol;

    new-instance v10, Lgnu/mapping/SimpleSymbol;

    const-string v12, "&serious"

    invoke-direct {v10, v12}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lgnu/mapping/SimpleSymbol;

    sput-object v10, Lgnu/kawa/slib/conditions;->Lit3:Lgnu/mapping/SimpleSymbol;

    sget-object v10, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    const v12, 0xe2003

    invoke-static {v4, v10, v8, v12}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v4

    sput-object v4, Lgnu/kawa/slib/conditions;->Lit2:Lgnu/lists/PairWithPosition;

    new-instance v4, Lgnu/mapping/SimpleSymbol;

    const-string v8, "&message"

    invoke-direct {v4, v8}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lgnu/mapping/SimpleSymbol;

    sput-object v4, Lgnu/kawa/slib/conditions;->Lit1:Lgnu/mapping/SimpleSymbol;

    new-instance v4, Lgnu/mapping/SimpleSymbol;

    const-string v8, "&condition"

    invoke-direct {v4, v8}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lgnu/mapping/SimpleSymbol;

    sput-object v4, Lgnu/kawa/slib/conditions;->Lit0:Lgnu/mapping/SimpleSymbol;

    new-instance v4, Lgnu/kawa/slib/conditions;

    invoke-direct {v4}, Lgnu/kawa/slib/conditions;-><init>()V

    sput-object v4, Lgnu/kawa/slib/conditions;->$instance:Lgnu/kawa/slib/conditions;

    const-class v8, Lgnu/kawa/slib/condition$Mntype;

    sput-object v8, Lgnu/kawa/slib/conditions;->$Lscondition$Mntype$Gr:Ljava/lang/Class;

    new-instance v8, Lgnu/expr/ModuleMethod;

    const/16 v10, 0x1001

    const/4 v12, 0x2

    invoke-direct {v8, v4, v12, v3, v10}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v8, Lgnu/kawa/slib/conditions;->condition$Mntype$Qu:Lgnu/expr/ModuleMethod;

    new-instance v3, Lgnu/expr/ModuleMethod;

    const/16 v8, 0x3003

    const/4 v12, 0x3

    invoke-direct {v3, v4, v12, v14, v8}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v3, Lgnu/kawa/slib/conditions;->make$Mncondition$Mntype:Lgnu/expr/ModuleMethod;

    move-object/from16 v14, v30

    .line 34
    invoke-static {v14, v11, v4}, Lkawa/lang/Macro;->make(Ljava/lang/Object;Lgnu/mapping/Procedure;Ljava/lang/Object;)Lkawa/lang/Macro;

    move-result-object v3

    sput-object v3, Lgnu/kawa/slib/conditions;->define$Mncondition$Mntype:Lkawa/lang/Macro;

    const-class v3, Lgnu/kawa/slib/condition;

    sput-object v3, Lgnu/kawa/slib/conditions;->$Prvt$$Lscondition$Gr:Ljava/lang/Class;

    new-instance v3, Lgnu/expr/ModuleMethod;

    const/4 v8, 0x4

    invoke-direct {v3, v4, v8, v7, v10}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v3, Lgnu/kawa/slib/conditions;->condition$Qu:Lgnu/expr/ModuleMethod;

    new-instance v3, Lgnu/expr/ModuleMethod;

    const/16 v7, -0xfff

    move-object/from16 v8, v29

    const/4 v11, 0x5

    invoke-direct {v3, v4, v11, v8, v7}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v3, Lgnu/kawa/slib/conditions;->make$Mncondition:Lgnu/expr/ModuleMethod;

    new-instance v3, Lgnu/expr/ModuleMethod;

    const/16 v8, 0x2002

    invoke-direct {v3, v4, v15, v2, v8}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v3, Lgnu/kawa/slib/conditions;->condition$Mnhas$Mntype$Qu:Lgnu/expr/ModuleMethod;

    move-object/from16 v13, v27

    move-object/from16 v2, v28

    invoke-static {v13, v2, v4}, Lkawa/lang/Macro;->make(Ljava/lang/Object;Lgnu/mapping/Procedure;Ljava/lang/Object;)Lkawa/lang/Macro;

    move-result-object v2

    sput-object v2, Lgnu/kawa/slib/conditions;->condition$Mntype$Mnfield$Mnalist:Lkawa/lang/Macro;

    new-instance v2, Lgnu/expr/ModuleMethod;

    const/4 v3, 0x7

    invoke-direct {v2, v4, v3, v9, v8}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v2, Lgnu/kawa/slib/conditions;->condition$Mnref:Lgnu/expr/ModuleMethod;

    new-instance v2, Lgnu/expr/ModuleMethod;

    move-object/from16 v3, v26

    const/16 v9, 0x8

    invoke-direct {v2, v4, v9, v3, v7}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v2, Lgnu/kawa/slib/conditions;->make$Mncompound$Mncondition:Lgnu/expr/ModuleMethod;

    new-instance v2, Lgnu/expr/ModuleMethod;

    invoke-direct {v2, v4, v1, v5, v8}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v2, Lgnu/kawa/slib/conditions;->extract$Mncondition:Lgnu/expr/ModuleMethod;

    move-object/from16 v1, v25

    invoke-static {v6, v1, v4}, Lkawa/lang/Macro;->make(Ljava/lang/Object;Lgnu/mapping/Procedure;Ljava/lang/Object;)Lkawa/lang/Macro;

    move-result-object v1

    sput-object v1, Lgnu/kawa/slib/conditions;->condition:Lkawa/lang/Macro;

    new-instance v1, Lgnu/expr/ModuleMethod;

    move-object/from16 v2, v18

    invoke-direct {v1, v4, v0, v2, v10}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v1, Lgnu/kawa/slib/conditions;->$Prvt$type$Mnfield$Mnalist$Mn$Grcondition:Lgnu/expr/ModuleMethod;

    invoke-virtual {v4}, Lgnu/expr/ModuleBody;->run()V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lgnu/expr/ModuleBody;-><init>()V

    invoke-static {p0}, Lgnu/expr/ModuleInfo;->register(Ljava/lang/Object;)V

    return-void
.end method

.method static checkConditionTypeFieldAlist(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 13

    const-string v0, "condition-subtype?"

    move-object v1, p0

    .line 203
    :goto_0
    invoke-static {v1}, Lkawa/lib/lists;->isNull(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 204
    sget-object v2, Lkawa/lib/lists;->car:Lgnu/expr/GenericProc;

    invoke-virtual {v2, v1}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 205
    sget-object v3, Lkawa/lib/lists;->car:Lgnu/expr/GenericProc;

    invoke-virtual {v3, v2}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    const/4 v4, -0x2

    :try_start_0
    check-cast v3, Lgnu/kawa/slib/condition$Mntype;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_4

    .line 206
    sget-object v5, Lkawa/lib/lists;->cdr:Lgnu/expr/GenericProc;

    invoke-virtual {v5, v2}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 207
    sget-object v5, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    :goto_1
    sget-object v6, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    const-string v7, "arg0"

    if-ne v2, v6, :cond_3

    invoke-static {v5}, Lgnu/lists/LList;->reverseInPlace(Ljava/lang/Object;)Lgnu/lists/LList;

    move-result-object v2

    .line 204
    iget-object v5, v3, Lgnu/kawa/slib/condition$Mntype;->all$Mnfields:Ljava/lang/Object;

    .line 219
    sget-object v6, Lkawa/standard/Scheme;->isEq:Lgnu/kawa/functions/IsEq;

    const/4 v8, 0x1

    new-array v9, v8, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v2, v9, v10

    invoke-static {v6, v5, v9}, Lgnu/kawa/slib/srfi1;->lsetDifference$V(Lgnu/mapping/Procedure;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    :goto_2
    sget-object v5, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    if-ne v2, v5, :cond_0

    .line 220
    sget-object v2, Lkawa/lib/lists;->cdr:Lgnu/expr/GenericProc;

    invoke-virtual {v2, v1}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_0

    .line 219
    :cond_0
    :try_start_1
    check-cast v2, Lgnu/lists/Pair;
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_2

    invoke-virtual {v2}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v5

    .line 211
    invoke-static {v3, v5}, Lgnu/kawa/slib/conditions;->conditionTypeFieldSupertype(Lgnu/kawa/slib/condition$Mntype;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    move-object v9, p0

    .line 214
    :goto_3
    sget-object v11, Lkawa/lib/lists;->car:Lgnu/expr/GenericProc;

    sget-object v12, Lkawa/lib/lists;->car:Lgnu/expr/GenericProc;

    invoke-virtual {v12, v9}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    invoke-virtual {v11, v12}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    :try_start_2
    check-cast v11, Lgnu/kawa/slib/condition$Mntype;
    :try_end_2
    .catch Ljava/lang/ClassCastException; {:try_start_2 .. :try_end_2} :catch_1

    :try_start_3
    move-object v12, v6

    check-cast v12, Lgnu/kawa/slib/condition$Mntype;
    :try_end_3
    .catch Ljava/lang/ClassCastException; {:try_start_3 .. :try_end_3} :catch_0

    invoke-static {v11, v12}, Lgnu/kawa/slib/conditions;->isConditionSubtype(Lgnu/kawa/slib/condition$Mntype;Lgnu/kawa/slib/condition$Mntype;)Z

    move-result v11

    if-eqz v11, :cond_2

    if-nez v11, :cond_1

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v3, v6, v10

    aput-object v5, v6, v8

    const-string v5, "missing field in condition construction"

    .line 216
    invoke-static {v5, v6}, Lkawa/lib/misc;->error$V(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    invoke-virtual {v2}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v2

    goto :goto_2

    .line 215
    :cond_2
    sget-object v11, Lkawa/lib/lists;->cdr:Lgnu/expr/GenericProc;

    invoke-virtual {v11, v9}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    goto :goto_3

    :catch_0
    move-exception p0

    .line 214
    new-instance v1, Lgnu/mapping/WrongType;

    invoke-direct {v1, p0, v0, v8, v6}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v1

    :catch_1
    move-exception p0

    new-instance v1, Lgnu/mapping/WrongType;

    invoke-direct {v1, p0, v0, v10, v11}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v1

    :catch_2
    move-exception p0

    .line 209
    new-instance v0, Lgnu/mapping/WrongType;

    invoke-direct {v0, p0, v7, v4, v2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v0

    .line 207
    :cond_3
    :try_start_4
    check-cast v2, Lgnu/lists/Pair;
    :try_end_4
    .catch Ljava/lang/ClassCastException; {:try_start_4 .. :try_end_4} :catch_3

    invoke-virtual {v2}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v6

    sget-object v7, Lkawa/lib/lists;->car:Lgnu/expr/GenericProc;

    invoke-virtual {v2}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v7, v2}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2, v5}, Lgnu/lists/Pair;->make(Ljava/lang/Object;Ljava/lang/Object;)Lgnu/lists/Pair;

    move-result-object v5

    move-object v2, v6

    goto/16 :goto_1

    :catch_3
    move-exception p0

    .line 205
    new-instance v0, Lgnu/mapping/WrongType;

    invoke-direct {v0, p0, v7, v4, v2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v0

    :catch_4
    move-exception p0

    new-instance v0, Lgnu/mapping/WrongType;

    const-string v1, "type"

    invoke-direct {v0, p0, v1, v4, v3}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v0

    .line 220
    :cond_4
    sget-object p0, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    return-object p0
.end method

.method static conditionMessage(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    const-string v0, "extract-condition"

    .line 224
    :try_start_0
    check-cast p0, Lgnu/kawa/slib/condition;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_1

    sget-object v1, Lgnu/kawa/slib/conditions;->$Ammessage:Ljava/lang/Object;

    :try_start_1
    check-cast v1, Lgnu/kawa/slib/condition$Mntype;
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_0

    invoke-static {p0, v1}, Lgnu/kawa/slib/conditions;->extractCondition(Lgnu/kawa/slib/condition;Lgnu/kawa/slib/condition$Mntype;)Lgnu/kawa/slib/condition;

    move-result-object p0

    sget-object v0, Lgnu/kawa/slib/conditions;->Lit5:Lgnu/mapping/SimpleSymbol;

    invoke-static {p0, v0}, Lgnu/kawa/slib/conditions;->conditionRef(Lgnu/kawa/slib/condition;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :catch_0
    move-exception p0

    new-instance v2, Lgnu/mapping/WrongType;

    const/4 v3, 0x1

    invoke-direct {v2, p0, v0, v3, v1}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v2

    :catch_1
    move-exception v1

    new-instance v2, Lgnu/mapping/WrongType;

    const/4 v3, 0x0

    invoke-direct {v2, v1, v0, v3, p0}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v2
.end method

.method public static conditionRef(Lgnu/kawa/slib/condition;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 145
    iget-object p0, p0, Lgnu/kawa/slib/condition;->type$Mnfield$Mnalist:Ljava/lang/Object;

    invoke-static {p0, p1}, Lgnu/kawa/slib/conditions;->typeFieldAlistRef(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method static conditionTypeFieldSupertype(Lgnu/kawa/slib/condition$Mntype;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 98
    :goto_0
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-ne p0, v0, :cond_0

    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lgnu/kawa/slib/condition$Mntype;->fields:Ljava/lang/Object;

    invoke-static {p1, v0}, Lkawa/lib/lists;->memq(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v0, v1, :cond_1

    :goto_1
    return-object p0

    .line 102
    :cond_1
    iget-object p0, p0, Lgnu/kawa/slib/condition$Mntype;->supertype:Ljava/lang/Object;

    check-cast p0, Lgnu/kawa/slib/condition$Mntype;

    goto :goto_0
.end method

.method static conditionTypes(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .line 198
    check-cast p0, Lgnu/kawa/slib/condition;

    iget-object p0, p0, Lgnu/kawa/slib/condition;->type$Mnfield$Mnalist:Ljava/lang/Object;

    sget-object v0, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    :goto_0
    sget-object v1, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    if-ne p0, v1, :cond_0

    invoke-static {v0}, Lgnu/lists/LList;->reverseInPlace(Ljava/lang/Object;)Lgnu/lists/LList;

    move-result-object p0

    return-object p0

    :cond_0
    :try_start_0
    check-cast p0, Lgnu/lists/Pair;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {p0}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Lkawa/lib/lists;->car:Lgnu/expr/GenericProc;

    invoke-virtual {p0}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v2, p0}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0, v0}, Lgnu/lists/Pair;->make(Ljava/lang/Object;Ljava/lang/Object;)Lgnu/lists/Pair;

    move-result-object v0

    move-object p0, v1

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Lgnu/mapping/WrongType;

    const/4 v2, -0x2

    const-string v3, "arg0"

    invoke-direct {v1, v0, v3, v2, p0}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v1
.end method

.method public static extractCondition(Lgnu/kawa/slib/condition;Lgnu/kawa/slib/condition$Mntype;)Lgnu/kawa/slib/condition;
    .locals 4

    .line 163
    new-instance v0, Lgnu/kawa/slib/conditions$frame;

    invoke-direct {v0}, Lgnu/kawa/slib/conditions$frame;-><init>()V

    iput-object p1, v0, Lgnu/kawa/slib/conditions$frame;->type:Lgnu/kawa/slib/condition$Mntype;

    .line 166
    iget-object p1, v0, Lgnu/kawa/slib/conditions$frame;->lambda$Fn1:Lgnu/expr/ModuleMethod;

    iget-object v1, p0, Lgnu/kawa/slib/condition;->type$Mnfield$Mnalist:Ljava/lang/Object;

    invoke-static {p1, v1}, Lgnu/kawa/slib/srfi1;->find(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 169
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-ne p1, v1, :cond_0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 p0, 0x1

    .line 170
    iget-object v2, v0, Lgnu/kawa/slib/conditions$frame;->type:Lgnu/kawa/slib/condition$Mntype;

    aput-object v2, v1, p0

    const-string p0, "extract-condition: invalid condition type"

    invoke-static {p0, v1}, Lkawa/lib/misc;->error$V(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 172
    :cond_0
    iget-object p0, v0, Lgnu/kawa/slib/conditions$frame;->type:Lgnu/kawa/slib/condition$Mntype;

    iget-object v0, v0, Lgnu/kawa/slib/conditions$frame;->type:Lgnu/kawa/slib/condition$Mntype;

    iget-object v0, v0, Lgnu/kawa/slib/condition$Mntype;->all$Mnfields:Ljava/lang/Object;

    sget-object v1, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    :goto_0
    sget-object v2, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    if-ne v0, v2, :cond_1

    .line 175
    invoke-static {v1}, Lgnu/lists/LList;->reverseInPlace(Ljava/lang/Object;)Lgnu/lists/LList;

    move-result-object p1

    invoke-static {p0, p1}, Lkawa/lib/lists;->cons(Ljava/lang/Object;Ljava/lang/Object;)Lgnu/lists/Pair;

    move-result-object p0

    invoke-static {p0}, Lgnu/lists/LList;->list1(Ljava/lang/Object;)Lgnu/lists/Pair;

    move-result-object p0

    new-instance p1, Lgnu/kawa/slib/condition;

    invoke-direct {p1, p0}, Lgnu/kawa/slib/condition;-><init>(Ljava/lang/Object;)V

    return-object p1

    .line 172
    :cond_1
    :try_start_0
    check-cast v0, Lgnu/lists/Pair;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {v0}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v0

    .line 175
    sget-object v3, Lkawa/lib/lists;->cdr:Lgnu/expr/GenericProc;

    invoke-virtual {v3, p1}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v0, v3}, Lkawa/lib/lists;->assq(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0, v1}, Lgnu/lists/Pair;->make(Ljava/lang/Object;Ljava/lang/Object;)Lgnu/lists/Pair;

    move-result-object v1

    move-object v0, v2

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance p1, Lgnu/mapping/WrongType;

    const/4 v1, -0x2

    const-string v2, "arg0"

    invoke-direct {p1, p0, v2, v1, v0}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw p1
.end method

.method public static isCondition(Ljava/lang/Object;)Z
    .locals 0

    .line 112
    instance-of p0, p0, Lgnu/kawa/slib/condition;

    return p0
.end method

.method public static isConditionHasType(Ljava/lang/Object;Lgnu/kawa/slib/condition$Mntype;)Z
    .locals 3

    .line 128
    invoke-static {p0}, Lgnu/kawa/slib/conditions;->conditionTypes(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 129
    :goto_0
    sget-object v0, Lkawa/lib/lists;->car:Lgnu/expr/GenericProc;

    invoke-virtual {v0, p0}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :try_start_0
    check-cast v0, Lgnu/kawa/slib/condition$Mntype;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-static {v0, p1}, Lgnu/kawa/slib/conditions;->isConditionSubtype(Lgnu/kawa/slib/condition$Mntype;Lgnu/kawa/slib/condition$Mntype;)Z

    move-result v0

    if-eqz v0, :cond_0

    return v0

    .line 130
    :cond_0
    sget-object v0, Lkawa/lib/lists;->cdr:Lgnu/expr/GenericProc;

    invoke-virtual {v0, p0}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 129
    new-instance p1, Lgnu/mapping/WrongType;

    const/4 v1, 0x0

    const-string v2, "condition-subtype?"

    invoke-direct {p1, p0, v2, v1, v0}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw p1
.end method

.method static isConditionSubtype(Lgnu/kawa/slib/condition$Mntype;Lgnu/kawa/slib/condition$Mntype;)Z
    .locals 1

    .line 90
    :goto_0
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x0

    goto :goto_1

    :cond_0
    if-ne p0, p1, :cond_1

    const/4 p0, 0x1

    :goto_1
    return p0

    .line 93
    :cond_1
    iget-object p0, p0, Lgnu/kawa/slib/condition$Mntype;->supertype:Ljava/lang/Object;

    check-cast p0, Lgnu/kawa/slib/condition$Mntype;

    goto :goto_0
.end method

.method public static isConditionType(Ljava/lang/Object;)Z
    .locals 0

    .line 57
    instance-of p0, p0, Lgnu/kawa/slib/condition$Mntype;

    return p0
.end method

.method static isError(Ljava/lang/Object;)Z
    .locals 4

    .line 81
    invoke-static {p0}, Lgnu/kawa/slib/conditions;->isCondition(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 231
    sget-object v0, Lgnu/kawa/slib/conditions;->$Amerror:Ljava/lang/Object;

    :try_start_0
    check-cast v0, Lgnu/kawa/slib/condition$Mntype;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-static {p0, v0}, Lgnu/kawa/slib/conditions;->isConditionHasType(Ljava/lang/Object;Lgnu/kawa/slib/condition$Mntype;)Z

    move-result v0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance v1, Lgnu/mapping/WrongType;

    const/4 v2, 0x1

    const-string v3, "condition-has-type?"

    invoke-direct {v1, p0, v3, v2, v0}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v1

    :cond_0
    :goto_0
    return v0
.end method

.method static isMessageCondition(Ljava/lang/Object;)Z
    .locals 4

    .line 81
    invoke-static {p0}, Lgnu/kawa/slib/conditions;->isCondition(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 224
    sget-object v0, Lgnu/kawa/slib/conditions;->$Ammessage:Ljava/lang/Object;

    :try_start_0
    check-cast v0, Lgnu/kawa/slib/condition$Mntype;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-static {p0, v0}, Lgnu/kawa/slib/conditions;->isConditionHasType(Ljava/lang/Object;Lgnu/kawa/slib/condition$Mntype;)Z

    move-result v0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance v1, Lgnu/mapping/WrongType;

    const/4 v2, 0x1

    const-string v3, "condition-has-type?"

    invoke-direct {v1, p0, v3, v2, v0}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v1

    :cond_0
    :goto_0
    return v0
.end method

.method static isSeriousCondition(Ljava/lang/Object;)Z
    .locals 4

    .line 81
    invoke-static {p0}, Lgnu/kawa/slib/conditions;->isCondition(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 228
    sget-object v0, Lgnu/kawa/slib/conditions;->$Amserious:Ljava/lang/Object;

    :try_start_0
    check-cast v0, Lgnu/kawa/slib/condition$Mntype;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-static {p0, v0}, Lgnu/kawa/slib/conditions;->isConditionHasType(Ljava/lang/Object;Lgnu/kawa/slib/condition$Mntype;)Z

    move-result v0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance v1, Lgnu/mapping/WrongType;

    const/4 v2, 0x1

    const-string v3, "condition-has-type?"

    invoke-direct {v1, p0, v3, v2, v0}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v1

    :cond_0
    :goto_0
    return v0
.end method

.method public static lambda1label(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 116
    invoke-static {p0}, Lkawa/lib/lists;->isNull(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p0, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    goto :goto_0

    .line 118
    :cond_0
    sget-object v0, Lkawa/lib/lists;->car:Lgnu/expr/GenericProc;

    invoke-virtual {v0, p0}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lkawa/lib/lists;->cadr:Lgnu/expr/GenericProc;

    .line 119
    invoke-virtual {v1, p0}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lkawa/lib/lists;->cons(Ljava/lang/Object;Ljava/lang/Object;)Lgnu/lists/Pair;

    move-result-object v0

    sget-object v1, Lkawa/lib/lists;->cddr:Lgnu/expr/GenericProc;

    .line 120
    invoke-virtual {v1, p0}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lgnu/kawa/slib/conditions;->lambda1label(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {v0, p0}, Lkawa/lib/lists;->cons(Ljava/lang/Object;Ljava/lang/Object;)Lgnu/lists/Pair;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public static makeCompoundCondition$V(Ljava/lang/Object;[Ljava/lang/Object;)Lgnu/kawa/slib/condition;
    .locals 5

    const/4 v0, 0x0

    .line 158
    invoke-static {p1, v0}, Lgnu/lists/LList;->makeList([Ljava/lang/Object;I)Lgnu/lists/LList;

    move-result-object p1

    .line 160
    sget-object v0, Lkawa/standard/Scheme;->apply:Lgnu/kawa/functions/Apply;

    sget-object v1, Lkawa/standard/append;->append:Lkawa/standard/append;

    .line 161
    invoke-static {p0, p1}, Lkawa/lib/lists;->cons(Ljava/lang/Object;Ljava/lang/Object;)Lgnu/lists/Pair;

    move-result-object p0

    sget-object p1, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    :goto_0
    sget-object v2, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    if-ne p0, v2, :cond_0

    .line 160
    invoke-static {p1}, Lgnu/lists/LList;->reverseInPlace(Ljava/lang/Object;)Lgnu/lists/LList;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    new-instance p1, Lgnu/kawa/slib/condition;

    invoke-direct {p1, p0}, Lgnu/kawa/slib/condition;-><init>(Ljava/lang/Object;)V

    return-object p1

    .line 161
    :cond_0
    :try_start_0
    check-cast p0, Lgnu/lists/Pair;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {p0}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v2

    sget-object v3, Lkawa/standard/Scheme;->applyToArgs:Lgnu/kawa/functions/ApplyToArgs;

    .line 160
    sget-object v4, Lgnu/kawa/slib/conditions;->condition$Mntype$Mnfield$Mnalist:Lkawa/lang/Macro;

    invoke-virtual {p0}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v3, v4, p0}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0, p1}, Lgnu/lists/Pair;->make(Ljava/lang/Object;Ljava/lang/Object;)Lgnu/lists/Pair;

    move-result-object p1

    move-object p0, v2

    goto :goto_0

    :catch_0
    move-exception p1

    new-instance v0, Lgnu/mapping/WrongType;

    const/4 v1, -0x2

    const-string v2, "arg0"

    invoke-direct {v0, p1, v2, v1, p0}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v0
.end method

.method public static makeCondition$V(Lgnu/kawa/slib/condition$Mntype;[Ljava/lang/Object;)Lgnu/kawa/slib/condition;
    .locals 7

    const/4 v0, 0x0

    .line 114
    invoke-static {p1, v0}, Lgnu/lists/LList;->makeList([Ljava/lang/Object;I)Lgnu/lists/LList;

    move-result-object p1

    .line 115
    invoke-static {p1}, Lgnu/kawa/slib/conditions;->lambda1label(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 121
    sget-object v1, Lkawa/standard/Scheme;->isEq:Lgnu/kawa/functions/IsEq;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lgnu/kawa/slib/condition$Mntype;->all$Mnfields:Ljava/lang/Object;

    aput-object v3, v2, v0

    .line 123
    sget-object v3, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    move-object v4, p1

    :goto_0
    sget-object v5, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    if-ne v4, v5, :cond_1

    invoke-static {v3}, Lgnu/lists/LList;->reverseInPlace(Ljava/lang/Object;)Lgnu/lists/LList;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Lgnu/kawa/slib/srfi1;->lset$Eq$V(Lgnu/mapping/Procedure;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-ne v1, v2, :cond_0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "condition fields don\'t match condition type"

    .line 124
    invoke-static {v1, v0}, Lkawa/lib/misc;->error$V(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    :cond_0
    new-instance v0, Lgnu/kawa/slib/condition;

    invoke-static {p0, p1}, Lkawa/lib/lists;->cons(Ljava/lang/Object;Ljava/lang/Object;)Lgnu/lists/Pair;

    move-result-object p0

    invoke-static {p0}, Lgnu/lists/LList;->list1(Ljava/lang/Object;)Lgnu/lists/Pair;

    move-result-object p0

    invoke-direct {v0, p0}, Lgnu/kawa/slib/condition;-><init>(Ljava/lang/Object;)V

    return-object v0

    .line 123
    :cond_1
    :try_start_0
    check-cast v4, Lgnu/lists/Pair;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {v4}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v5

    sget-object v6, Lkawa/lib/lists;->car:Lgnu/expr/GenericProc;

    invoke-virtual {v4}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v6, v4}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4, v3}, Lgnu/lists/Pair;->make(Ljava/lang/Object;Ljava/lang/Object;)Lgnu/lists/Pair;

    move-result-object v3

    move-object v4, v5

    goto :goto_0

    :catch_0
    move-exception p0

    .line 125
    new-instance p1, Lgnu/mapping/WrongType;

    const/4 v0, -0x2

    const-string v1, "arg0"

    invoke-direct {p1, p0, v1, v0, v4}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw p1
.end method

.method public static makeConditionType(Lgnu/mapping/Symbol;Lgnu/kawa/slib/condition$Mntype;Ljava/lang/Object;)Lgnu/kawa/slib/condition$Mntype;
    .locals 5

    .line 63
    sget-object v0, Lkawa/standard/Scheme;->isEq:Lgnu/kawa/functions/IsEq;

    iget-object v1, p1, Lgnu/kawa/slib/condition$Mntype;->all$Mnfields:Ljava/lang/Object;

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p2, v3, v4

    invoke-static {v0, v1, v3}, Lgnu/kawa/slib/srfi1;->lsetIntersection$V(Lgnu/mapping/Procedure;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkawa/lib/lists;->isNull(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    new-array v0, v4, [Ljava/lang/Object;

    const-string v1, "duplicate field name"

    .line 67
    invoke-static {v1, v0}, Lkawa/lib/misc;->error$V(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    :cond_0
    new-instance v0, Lgnu/kawa/slib/condition$Mntype;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v3, p1, Lgnu/kawa/slib/condition$Mntype;->all$Mnfields:Ljava/lang/Object;

    aput-object v3, v1, v4

    aput-object p2, v1, v2

    invoke-static {v1}, Lkawa/standard/append;->append$V([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-direct {v0, p0, p1, p2, v1}, Lgnu/kawa/slib/condition$Mntype;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static typeFieldAlist$To$Condition(Ljava/lang/Object;)Lgnu/kawa/slib/condition;
    .locals 11

    const-string v0, "arg0"

    .line 196
    sget-object v1, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    move-object v2, p0

    :goto_0
    sget-object v3, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    if-ne v2, v3, :cond_0

    .line 192
    invoke-static {v1}, Lgnu/lists/LList;->reverseInPlace(Ljava/lang/Object;)Lgnu/lists/LList;

    move-result-object p0

    new-instance v0, Lgnu/kawa/slib/condition;

    invoke-direct {v0, p0}, Lgnu/kawa/slib/condition;-><init>(Ljava/lang/Object;)V

    return-object v0

    :cond_0
    const/4 v3, -0x2

    .line 196
    :try_start_0
    check-cast v2, Lgnu/lists/Pair;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_1

    invoke-virtual {v2}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v2

    .line 190
    sget-object v5, Lkawa/lib/lists;->car:Lgnu/expr/GenericProc;

    invoke-virtual {v5, v2}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    sget-object v6, Lkawa/lib/lists;->car:Lgnu/expr/GenericProc;

    .line 195
    invoke-virtual {v6, v2}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lgnu/kawa/slib/condition$Mntype;

    iget-object v6, v6, Lgnu/kawa/slib/condition$Mntype;->all$Mnfields:Ljava/lang/Object;

    sget-object v7, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    :goto_1
    sget-object v8, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    if-ne v6, v8, :cond_1

    .line 192
    invoke-static {v7}, Lgnu/lists/LList;->reverseInPlace(Ljava/lang/Object;)Lgnu/lists/LList;

    move-result-object v2

    invoke-static {v5, v2}, Lkawa/lib/lists;->cons(Ljava/lang/Object;Ljava/lang/Object;)Lgnu/lists/Pair;

    move-result-object v2

    invoke-static {v2, v1}, Lgnu/lists/Pair;->make(Ljava/lang/Object;Ljava/lang/Object;)Lgnu/lists/Pair;

    move-result-object v1

    move-object v2, v4

    goto :goto_0

    .line 195
    :cond_1
    :try_start_1
    check-cast v6, Lgnu/lists/Pair;
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_0

    invoke-virtual {v6}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v6}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v6

    .line 192
    sget-object v9, Lkawa/lib/lists;->cdr:Lgnu/expr/GenericProc;

    invoke-virtual {v9, v2}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    invoke-static {v6, v9}, Lkawa/lib/lists;->assq(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    sget-object v10, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v9, v10, :cond_2

    goto :goto_2

    :cond_2
    invoke-static {p0, v6}, Lgnu/kawa/slib/conditions;->typeFieldAlistRef(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    invoke-static {v6, v9}, Lkawa/lib/lists;->cons(Ljava/lang/Object;Ljava/lang/Object;)Lgnu/lists/Pair;

    move-result-object v9

    :goto_2
    invoke-static {v9, v7}, Lgnu/lists/Pair;->make(Ljava/lang/Object;Ljava/lang/Object;)Lgnu/lists/Pair;

    move-result-object v7

    move-object v6, v8

    goto :goto_1

    :catch_0
    move-exception p0

    new-instance v1, Lgnu/mapping/WrongType;

    invoke-direct {v1, p0, v0, v3, v6}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v1

    :catch_1
    move-exception p0

    new-instance v1, Lgnu/mapping/WrongType;

    invoke-direct {v1, p0, v0, v3, v2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v1
.end method

.method static typeFieldAlistRef(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 150
    :goto_0
    invoke-static {p0}, Lkawa/lib/lists;->isNull(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 p0, 0x1

    aput-object p1, v0, p0

    const-string p0, "type-field-alist-ref: field not found"

    .line 151
    invoke-static {p0, v0}, Lkawa/lib/misc;->error$V(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    goto :goto_1

    .line 153
    :cond_0
    sget-object v0, Lkawa/lib/lists;->cdr:Lgnu/expr/GenericProc;

    sget-object v1, Lkawa/lib/lists;->car:Lgnu/expr/GenericProc;

    invoke-virtual {v1, p0}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {p1, v0}, Lkawa/lib/lists;->assq(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 150
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v0, v1, :cond_1

    .line 154
    sget-object p0, Lkawa/lib/lists;->cdr:Lgnu/expr/GenericProc;

    .line 10000
    invoke-virtual {p0, v0}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    :goto_1
    return-object p0

    .line 156
    :cond_1
    sget-object v0, Lkawa/lib/lists;->cdr:Lgnu/expr/GenericProc;

    invoke-virtual {v0, p0}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    goto :goto_0
.end method


# virtual methods
.method public apply1(Lgnu/expr/ModuleMethod;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget v0, p1, Lgnu/expr/ModuleMethod;->selector:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    const/16 v1, 0xa

    if-eq v0, v1, :cond_0

    .line 187
    invoke-super {p0, p1, p2}, Lgnu/expr/ModuleBody;->apply1(Lgnu/expr/ModuleMethod;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-static {p2}, Lgnu/kawa/slib/conditions;->typeFieldAlist$To$Condition(Ljava/lang/Object;)Lgnu/kawa/slib/condition;

    move-result-object p1

    return-object p1

    .line 111
    :cond_1
    invoke-static {p2}, Lgnu/kawa/slib/conditions;->isCondition(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_0

    :cond_2
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :goto_0
    return-object p1

    .line 56
    :cond_3
    invoke-static {p2}, Lgnu/kawa/slib/conditions;->isConditionType(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_1

    :cond_4
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :goto_1
    return-object p1
.end method

.method public apply2(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    const-string v0, "extract-condition"

    iget v1, p1, Lgnu/expr/ModuleMethod;->selector:I

    const/4 v2, 0x6

    const/4 v3, 0x2

    if-eq v1, v2, :cond_2

    const/4 v2, 0x7

    const/4 v4, 0x1

    if-eq v1, v2, :cond_1

    const/16 v2, 0x9

    if-eq v1, v2, :cond_0

    .line 163
    invoke-super {p0, p1, p2, p3}, Lgnu/expr/ModuleBody;->apply2(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_0
    :try_start_0
    check-cast p2, Lgnu/kawa/slib/condition;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    check-cast p3, Lgnu/kawa/slib/condition$Mntype;
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_0

    invoke-static {p2, p3}, Lgnu/kawa/slib/conditions;->extractCondition(Lgnu/kawa/slib/condition;Lgnu/kawa/slib/condition$Mntype;)Lgnu/kawa/slib/condition;

    move-result-object p1

    return-object p1

    :catch_0
    move-exception p1

    .line 164
    new-instance p2, Lgnu/mapping/WrongType;

    invoke-direct {p2, p1, v0, v3, p3}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw p2

    :catch_1
    move-exception p1

    .line 163
    new-instance p3, Lgnu/mapping/WrongType;

    invoke-direct {p3, p1, v0, v4, p2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw p3

    .line 144
    :cond_1
    :try_start_2
    check-cast p2, Lgnu/kawa/slib/condition;
    :try_end_2
    .catch Ljava/lang/ClassCastException; {:try_start_2 .. :try_end_2} :catch_2

    invoke-static {p2, p3}, Lgnu/kawa/slib/conditions;->conditionRef(Lgnu/kawa/slib/condition;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :catch_2
    move-exception p1

    new-instance p3, Lgnu/mapping/WrongType;

    const-string v0, "condition-ref"

    invoke-direct {p3, p1, v0, v4, p2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw p3

    .line 127
    :cond_2
    :try_start_3
    check-cast p3, Lgnu/kawa/slib/condition$Mntype;
    :try_end_3
    .catch Ljava/lang/ClassCastException; {:try_start_3 .. :try_end_3} :catch_3

    invoke-static {p2, p3}, Lgnu/kawa/slib/conditions;->isConditionHasType(Ljava/lang/Object;Lgnu/kawa/slib/condition$Mntype;)Z

    move-result p1

    if-eqz p1, :cond_3

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_0

    :cond_3
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :goto_0
    return-object p1

    :catch_3
    move-exception p1

    new-instance p2, Lgnu/mapping/WrongType;

    const-string v0, "condition-has-type?"

    invoke-direct {p2, p1, v0, v3, p3}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw p2
.end method

.method public apply3(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    const-string v0, "make-condition-type"

    iget v1, p1, Lgnu/expr/ModuleMethod;->selector:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    .line 59
    :try_start_0
    check-cast p2, Lgnu/mapping/Symbol;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    check-cast p3, Lgnu/kawa/slib/condition$Mntype;
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_0

    invoke-static {p2, p3, p4}, Lgnu/kawa/slib/conditions;->makeConditionType(Lgnu/mapping/Symbol;Lgnu/kawa/slib/condition$Mntype;Ljava/lang/Object;)Lgnu/kawa/slib/condition$Mntype;

    move-result-object p1

    return-object p1

    :catch_0
    move-exception p1

    .line 60
    new-instance p2, Lgnu/mapping/WrongType;

    const/4 p4, 0x2

    invoke-direct {p2, p1, v0, p4, p3}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw p2

    :catch_1
    move-exception p1

    .line 59
    new-instance p3, Lgnu/mapping/WrongType;

    const/4 p4, 0x1

    invoke-direct {p3, p1, v0, p4, p2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw p3

    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Lgnu/expr/ModuleBody;->apply3(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public applyN(Lgnu/expr/ModuleMethod;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    iget v0, p1, Lgnu/expr/ModuleMethod;->selector:I

    const/4 v1, 0x5

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v0, v1, :cond_2

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    .line 158
    invoke-super {p0, p1, p2}, Lgnu/expr/ModuleBody;->applyN(Lgnu/expr/ModuleMethod;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_0
    aget-object p1, p2, v2

    array-length v0, p2

    sub-int/2addr v0, v3

    new-array v1, v0, [Ljava/lang/Object;

    :goto_0
    add-int/lit8 v0, v0, -0x1

    if-gez v0, :cond_1

    invoke-static {p1, v1}, Lgnu/kawa/slib/conditions;->makeCompoundCondition$V(Ljava/lang/Object;[Ljava/lang/Object;)Lgnu/kawa/slib/condition;

    move-result-object p1

    return-object p1

    :cond_1
    add-int/lit8 v2, v0, 0x1

    aget-object v2, p2, v2

    aput-object v2, v1, v0

    goto :goto_0

    .line 114
    :cond_2
    aget-object p1, p2, v2

    :try_start_0
    move-object v0, p1

    check-cast v0, Lgnu/kawa/slib/condition$Mntype;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    array-length p1, p2

    sub-int/2addr p1, v3

    new-array v1, p1, [Ljava/lang/Object;

    :goto_1
    add-int/lit8 p1, p1, -0x1

    if-gez p1, :cond_3

    invoke-static {v0, v1}, Lgnu/kawa/slib/conditions;->makeCondition$V(Lgnu/kawa/slib/condition$Mntype;[Ljava/lang/Object;)Lgnu/kawa/slib/condition;

    move-result-object p1

    return-object p1

    :cond_3
    add-int/lit8 v2, p1, 0x1

    aget-object v2, p2, v2

    aput-object v2, v1, p1

    goto :goto_1

    :catch_0
    move-exception p2

    new-instance v0, Lgnu/mapping/WrongType;

    const-string v1, "make-condition"

    invoke-direct {v0, p2, v1, v3, p1}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v0
.end method

.method public match1(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Lgnu/mapping/CallContext;)I
    .locals 4

    iget v0, p1, Lgnu/expr/ModuleMethod;->selector:I

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    const/16 v1, 0xa

    if-eq v0, v1, :cond_0

    .line 56
    invoke-super {p0, p1, p2, p3}, Lgnu/expr/ModuleBody;->match1(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result p1

    return p1

    .line 187
    :cond_0
    iput-object p2, p3, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p1, p3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v3, p3, Lgnu/mapping/CallContext;->pc:I

    return v2

    .line 111
    :cond_1
    iput-object p2, p3, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p1, p3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v3, p3, Lgnu/mapping/CallContext;->pc:I

    return v2

    .line 56
    :cond_2
    iput-object p2, p3, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p1, p3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v3, p3, Lgnu/mapping/CallContext;->pc:I

    return v2
.end method

.method public match2(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)I
    .locals 6

    iget v0, p1, Lgnu/expr/ModuleMethod;->selector:I

    const/4 v1, 0x6

    const v2, -0xbfffe

    const/4 v3, 0x0

    const/4 v4, 0x2

    if-eq v0, v1, :cond_5

    const/4 v1, 0x7

    const v5, -0xbffff

    if-eq v0, v1, :cond_3

    const/16 v1, 0x9

    if-eq v0, v1, :cond_0

    .line 127
    invoke-super {p0, p1, p2, p3, p4}, Lgnu/expr/ModuleBody;->match2(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result p1

    return p1

    .line 163
    :cond_0
    instance-of v0, p2, Lgnu/kawa/slib/condition;

    if-nez v0, :cond_1

    return v5

    :cond_1
    iput-object p2, p4, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    instance-of p2, p3, Lgnu/kawa/slib/condition$Mntype;

    if-nez p2, :cond_2

    return v2

    :cond_2
    iput-object p3, p4, Lgnu/mapping/CallContext;->value2:Ljava/lang/Object;

    iput-object p1, p4, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v4, p4, Lgnu/mapping/CallContext;->pc:I

    return v3

    .line 144
    :cond_3
    instance-of v0, p2, Lgnu/kawa/slib/condition;

    if-nez v0, :cond_4

    return v5

    :cond_4
    iput-object p2, p4, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p3, p4, Lgnu/mapping/CallContext;->value2:Ljava/lang/Object;

    iput-object p1, p4, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v4, p4, Lgnu/mapping/CallContext;->pc:I

    return v3

    .line 127
    :cond_5
    iput-object p2, p4, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    instance-of p2, p3, Lgnu/kawa/slib/condition$Mntype;

    if-nez p2, :cond_6

    return v2

    :cond_6
    iput-object p3, p4, Lgnu/mapping/CallContext;->value2:Ljava/lang/Object;

    iput-object p1, p4, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v4, p4, Lgnu/mapping/CallContext;->pc:I

    return v3
.end method

.method public match3(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)I
    .locals 2

    iget v0, p1, Lgnu/expr/ModuleMethod;->selector:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    .line 59
    instance-of v0, p2, Lgnu/mapping/Symbol;

    if-nez v0, :cond_0

    const p1, -0xbffff

    return p1

    :cond_0
    iput-object p2, p5, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    instance-of p2, p3, Lgnu/kawa/slib/condition$Mntype;

    if-nez p2, :cond_1

    const p1, -0xbfffe

    return p1

    :cond_1
    iput-object p3, p5, Lgnu/mapping/CallContext;->value2:Ljava/lang/Object;

    iput-object p4, p5, Lgnu/mapping/CallContext;->value3:Ljava/lang/Object;

    iput-object p1, p5, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v1, p5, Lgnu/mapping/CallContext;->pc:I

    const/4 p1, 0x0

    return p1

    :cond_2
    invoke-super/range {p0 .. p5}, Lgnu/expr/ModuleBody;->match3(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result p1

    return p1
.end method

.method public matchN(Lgnu/expr/ModuleMethod;[Ljava/lang/Object;Lgnu/mapping/CallContext;)I
    .locals 4

    iget v0, p1, Lgnu/expr/ModuleMethod;->selector:I

    const/4 v1, 0x0

    const/4 v2, 0x5

    if-eq v0, v2, :cond_1

    const/16 v3, 0x8

    if-eq v0, v3, :cond_0

    .line 114
    invoke-super {p0, p1, p2, p3}, Lgnu/expr/ModuleBody;->matchN(Lgnu/expr/ModuleMethod;[Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result p1

    return p1

    .line 158
    :cond_0
    iput-object p2, p3, Lgnu/mapping/CallContext;->values:[Ljava/lang/Object;

    iput-object p1, p3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v2, p3, Lgnu/mapping/CallContext;->pc:I

    return v1

    .line 114
    :cond_1
    iput-object p2, p3, Lgnu/mapping/CallContext;->values:[Ljava/lang/Object;

    iput-object p1, p3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v2, p3, Lgnu/mapping/CallContext;->pc:I

    return v1
.end method

.method public final run(Lgnu/mapping/CallContext;)V
    .locals 5

    const-string v0, "make-condition-type"

    .line 28
    iget-object p1, p1, Lgnu/mapping/CallContext;->consumer:Lgnu/lists/Consumer;

    .line 222
    new-instance p1, Lgnu/kawa/slib/condition$Mntype;

    sget-object v1, Lgnu/kawa/slib/conditions;->Lit0:Lgnu/mapping/SimpleSymbol;

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    sget-object v3, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    sget-object v4, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    invoke-direct {p1, v1, v2, v3, v4}, Lgnu/kawa/slib/condition$Mntype;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    sput-object p1, Lgnu/kawa/slib/conditions;->$Amcondition:Ljava/lang/Object;

    .line 224
    sget-object v1, Lgnu/kawa/slib/conditions;->Lit1:Lgnu/mapping/SimpleSymbol;

    const/4 v2, 0x1

    :try_start_0
    move-object v3, p1

    check-cast v3, Lgnu/kawa/slib/condition$Mntype;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_2

    sget-object v3, Lgnu/kawa/slib/conditions;->Lit2:Lgnu/lists/PairWithPosition;

    invoke-static {v1, p1, v3}, Lgnu/kawa/slib/conditions;->makeConditionType(Lgnu/mapping/Symbol;Lgnu/kawa/slib/condition$Mntype;Ljava/lang/Object;)Lgnu/kawa/slib/condition$Mntype;

    move-result-object p1

    sput-object p1, Lgnu/kawa/slib/conditions;->$Ammessage:Ljava/lang/Object;

    .line 228
    sget-object p1, Lgnu/kawa/slib/conditions;->Lit3:Lgnu/mapping/SimpleSymbol;

    sget-object v1, Lgnu/kawa/slib/conditions;->$Amcondition:Ljava/lang/Object;

    :try_start_1
    check-cast v1, Lgnu/kawa/slib/condition$Mntype;
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_1

    sget-object v3, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    invoke-static {p1, v1, v3}, Lgnu/kawa/slib/conditions;->makeConditionType(Lgnu/mapping/Symbol;Lgnu/kawa/slib/condition$Mntype;Ljava/lang/Object;)Lgnu/kawa/slib/condition$Mntype;

    move-result-object p1

    sput-object p1, Lgnu/kawa/slib/conditions;->$Amserious:Ljava/lang/Object;

    .line 231
    sget-object v1, Lgnu/kawa/slib/conditions;->Lit4:Lgnu/mapping/SimpleSymbol;

    :try_start_2
    move-object v3, p1

    check-cast v3, Lgnu/kawa/slib/condition$Mntype;
    :try_end_2
    .catch Ljava/lang/ClassCastException; {:try_start_2 .. :try_end_2} :catch_0

    sget-object v0, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    invoke-static {v1, p1, v0}, Lgnu/kawa/slib/conditions;->makeConditionType(Lgnu/mapping/Symbol;Lgnu/kawa/slib/condition$Mntype;Ljava/lang/Object;)Lgnu/kawa/slib/condition$Mntype;

    move-result-object p1

    sput-object p1, Lgnu/kawa/slib/conditions;->$Amerror:Ljava/lang/Object;

    return-void

    :catch_0
    move-exception v1

    new-instance v3, Lgnu/mapping/WrongType;

    invoke-direct {v3, v1, v0, v2, p1}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v3

    :catch_1
    move-exception p1

    .line 228
    new-instance v3, Lgnu/mapping/WrongType;

    invoke-direct {v3, p1, v0, v2, v1}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v3

    :catch_2
    move-exception v1

    .line 224
    new-instance v3, Lgnu/mapping/WrongType;

    invoke-direct {v3, v1, v0, v2, p1}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v3
.end method
