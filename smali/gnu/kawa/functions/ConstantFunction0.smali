.class public Lgnu/kawa/functions/ConstantFunction0;
.super Lgnu/mapping/Procedure0;
.source "ConstantFunction0.java"


# instance fields
.field final constant:Lgnu/expr/QuoteExp;

.field final value:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lgnu/expr/QuoteExp;)V
    .locals 0

    .line 23
    invoke-direct {p0, p1}, Lgnu/mapping/Procedure0;-><init>(Ljava/lang/String;)V

    .line 24
    invoke-virtual {p2}, Lgnu/expr/QuoteExp;->getValue()Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lgnu/kawa/functions/ConstantFunction0;->value:Ljava/lang/Object;

    .line 25
    iput-object p2, p0, Lgnu/kawa/functions/ConstantFunction0;->constant:Lgnu/expr/QuoteExp;

    .line 26
    sget-object p1, Lgnu/mapping/Procedure;->validateApplyKey:Lgnu/mapping/Symbol;

    const-string p2, "gnu.kawa.functions.CompileMisc:validateApplyConstantFunction0"

    invoke-virtual {p0, p1, p2}, Lgnu/kawa/functions/ConstantFunction0;->setProperty(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 18
    invoke-static {p2}, Lgnu/expr/QuoteExp;->getInstance(Ljava/lang/Object;)Lgnu/expr/QuoteExp;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lgnu/kawa/functions/ConstantFunction0;-><init>(Ljava/lang/String;Lgnu/expr/QuoteExp;)V

    return-void
.end method


# virtual methods
.method public apply0()Ljava/lang/Object;
    .locals 1

    .line 30
    iget-object v0, p0, Lgnu/kawa/functions/ConstantFunction0;->value:Ljava/lang/Object;

    return-object v0
.end method
