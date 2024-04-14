.class public Lgnu/kawa/functions/CompileMisc;
.super Ljava/lang/Object;
.source "CompileMisc.java"

# interfaces
.implements Lgnu/expr/Inlineable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lgnu/kawa/functions/CompileMisc$ExitThroughFinallyChecker;
    }
.end annotation


# static fields
.field static final CONVERT:I = 0x2

.field static final NOT:I = 0x3

.field static coerceMethod:Lgnu/bytecode/Method;

.field public static final typeContinuation:Lgnu/bytecode/ClassType;

.field static typeType:Lgnu/bytecode/ClassType;


# instance fields
.field code:I

.field proc:Lgnu/mapping/Procedure;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "kawa.lang.Continuation"

    .line 308
    invoke-static {v0}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v0

    sput-object v0, Lgnu/kawa/functions/CompileMisc;->typeContinuation:Lgnu/bytecode/ClassType;

    return-void
.end method

.method public constructor <init>(Lgnu/mapping/Procedure;I)V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lgnu/kawa/functions/CompileMisc;->proc:Lgnu/mapping/Procedure;

    .line 20
    iput p2, p0, Lgnu/kawa/functions/CompileMisc;->code:I

    return-void
.end method

.method private static canInlineCallCC(Lgnu/expr/ApplyExp;)Lgnu/expr/LambdaExp;
    .locals 2

    .line 381
    invoke-virtual {p0}, Lgnu/expr/ApplyExp;->getArgs()[Lgnu/expr/Expression;

    move-result-object p0

    .line 383
    array-length v0, p0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    aget-object p0, p0, v0

    instance-of v0, p0, Lgnu/expr/LambdaExp;

    if-eqz v0, :cond_0

    .line 385
    check-cast p0, Lgnu/expr/LambdaExp;

    .line 386
    iget v0, p0, Lgnu/expr/LambdaExp;->min_args:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lgnu/expr/LambdaExp;->max_args:I

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lgnu/expr/LambdaExp;->firstDecl()Lgnu/expr/Declaration;

    move-result-object v0

    invoke-virtual {v0}, Lgnu/expr/Declaration;->getCanWrite()Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static compileCallCC(Lgnu/expr/ApplyExp;Lgnu/expr/Compilation;Lgnu/expr/Target;Lgnu/mapping/Procedure;)V
    .locals 9

    .line 313
    invoke-static {p0}, Lgnu/kawa/functions/CompileMisc;->canInlineCallCC(Lgnu/expr/ApplyExp;)Lgnu/expr/LambdaExp;

    move-result-object p3

    if-nez p3, :cond_0

    .line 316
    invoke-static {p0, p1, p2}, Lgnu/expr/ApplyExp;->compile(Lgnu/expr/ApplyExp;Lgnu/expr/Compilation;Lgnu/expr/Target;)V

    return-void

    .line 319
    :cond_0
    invoke-virtual {p1}, Lgnu/expr/Compilation;->getCode()Lgnu/bytecode/CodeAttr;

    move-result-object p0

    .line 320
    invoke-virtual {p3}, Lgnu/expr/LambdaExp;->firstDecl()Lgnu/expr/Declaration;

    move-result-object v0

    .line 321
    invoke-virtual {v0}, Lgnu/expr/Declaration;->isSimple()Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lgnu/expr/Declaration;->getCanRead()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {v0}, Lgnu/expr/Declaration;->getCanWrite()Z

    move-result v1

    if-nez v1, :cond_2

    .line 323
    invoke-virtual {v0, v2}, Lgnu/expr/Declaration;->setCanCall(Z)V

    .line 324
    new-instance v1, Lgnu/kawa/functions/CompileTimeContinuation;

    invoke-direct {v1}, Lgnu/kawa/functions/CompileTimeContinuation;-><init>()V

    .line 325
    instance-of v5, p2, Lgnu/expr/StackTarget;

    if-eqz v5, :cond_1

    invoke-virtual {p2}, Lgnu/expr/Target;->getType()Lgnu/bytecode/Type;

    move-result-object v4

    .line 326
    :cond_1
    iget-object v5, p3, Lgnu/expr/LambdaExp;->body:Lgnu/expr/Expression;

    invoke-static {v0, v5}, Lgnu/kawa/functions/CompileMisc$ExitThroughFinallyChecker;->check(Lgnu/expr/Declaration;Lgnu/expr/Expression;)Z

    move-result v5

    .line 328
    invoke-virtual {p0, v4, v5}, Lgnu/bytecode/CodeAttr;->startExitableBlock(Lgnu/bytecode/Type;Z)Lgnu/bytecode/ExitableBlock;

    move-result-object v4

    .line 329
    iput-object v4, v1, Lgnu/kawa/functions/CompileTimeContinuation;->exitableBlock:Lgnu/bytecode/ExitableBlock;

    .line 330
    iput-object p2, v1, Lgnu/kawa/functions/CompileTimeContinuation;->blockTarget:Lgnu/expr/Target;

    .line 331
    new-instance v4, Lgnu/expr/QuoteExp;

    invoke-direct {v4, v1}, Lgnu/expr/QuoteExp;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v4}, Lgnu/expr/Declaration;->setValue(Lgnu/expr/Expression;)V

    .line 332
    new-instance v0, Lgnu/expr/ApplyExp;

    new-array v1, v3, [Lgnu/expr/Expression;

    sget-object v3, Lgnu/expr/QuoteExp;->nullExp:Lgnu/expr/QuoteExp;

    aput-object v3, v1, v2

    invoke-direct {v0, p3, v1}, Lgnu/expr/ApplyExp;-><init>(Lgnu/expr/Expression;[Lgnu/expr/Expression;)V

    invoke-virtual {v0, p1, p2}, Lgnu/expr/ApplyExp;->compile(Lgnu/expr/Compilation;Lgnu/expr/Target;)V

    .line 333
    invoke-virtual {p0}, Lgnu/bytecode/CodeAttr;->endExitableBlock()V

    return-void

    .line 337
    :cond_2
    invoke-virtual {p0}, Lgnu/bytecode/CodeAttr;->pushScope()Lgnu/bytecode/Scope;

    move-result-object v0

    .line 338
    sget-object v1, Lgnu/kawa/functions/CompileMisc;->typeContinuation:Lgnu/bytecode/ClassType;

    invoke-virtual {v0, p0, v1, v4}, Lgnu/bytecode/Scope;->addVariable(Lgnu/bytecode/CodeAttr;Lgnu/bytecode/Type;Ljava/lang/String;)Lgnu/bytecode/Variable;

    move-result-object v0

    .line 339
    new-instance v5, Lgnu/expr/Declaration;

    invoke-direct {v5, v0}, Lgnu/expr/Declaration;-><init>(Lgnu/bytecode/Variable;)V

    .line 340
    invoke-virtual {p0, v1}, Lgnu/bytecode/CodeAttr;->emitNew(Lgnu/bytecode/ClassType;)V

    .line 341
    invoke-virtual {p0, v1}, Lgnu/bytecode/CodeAttr;->emitDup(Lgnu/bytecode/Type;)V

    .line 342
    invoke-virtual {p1}, Lgnu/expr/Compilation;->loadCallContext()V

    const-string v6, "<init>"

    .line 343
    invoke-virtual {v1, v6, v3}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    move-result-object v6

    invoke-virtual {p0, v6}, Lgnu/bytecode/CodeAttr;->emitInvokeSpecial(Lgnu/bytecode/Method;)V

    .line 344
    invoke-virtual {p0, v0}, Lgnu/bytecode/CodeAttr;->emitStore(Lgnu/bytecode/Variable;)V

    .line 345
    instance-of v6, p2, Lgnu/expr/IgnoreTarget;

    if-nez v6, :cond_4

    instance-of v6, p2, Lgnu/expr/ConsumerTarget;

    if-eqz v6, :cond_3

    goto :goto_0

    :cond_3
    sget-object v6, Lgnu/bytecode/Type;->objectType:Lgnu/bytecode/ClassType;

    goto :goto_1

    :cond_4
    :goto_0
    move-object v6, v4

    :goto_1
    invoke-virtual {p0, v2, v6}, Lgnu/bytecode/CodeAttr;->emitTryStart(ZLgnu/bytecode/Type;)V

    .line 346
    new-instance v6, Lgnu/expr/ApplyExp;

    new-array v7, v3, [Lgnu/expr/Expression;

    new-instance v8, Lgnu/expr/ReferenceExp;

    invoke-direct {v8, v5}, Lgnu/expr/ReferenceExp;-><init>(Lgnu/expr/Declaration;)V

    aput-object v8, v7, v2

    invoke-direct {v6, p3, v7}, Lgnu/expr/ApplyExp;-><init>(Lgnu/expr/Expression;[Lgnu/expr/Expression;)V

    .line 347
    invoke-virtual {v6, p1, p2}, Lgnu/expr/ApplyExp;->compile(Lgnu/expr/Compilation;Lgnu/expr/Target;)V

    .line 349
    invoke-virtual {p0}, Lgnu/bytecode/CodeAttr;->reachableHere()Z

    move-result p3

    if-eqz p3, :cond_5

    .line 351
    invoke-virtual {p0, v0}, Lgnu/bytecode/CodeAttr;->emitLoad(Lgnu/bytecode/Variable;)V

    .line 352
    invoke-virtual {p0, v3}, Lgnu/bytecode/CodeAttr;->emitPushInt(I)V

    const-string p3, "invoked"

    .line 353
    invoke-virtual {v1, p3}, Lgnu/bytecode/ClassType;->getField(Ljava/lang/String;)Lgnu/bytecode/Field;

    move-result-object p3

    invoke-virtual {p0, p3}, Lgnu/bytecode/CodeAttr;->emitPutField(Lgnu/bytecode/Field;)V

    .line 355
    :cond_5
    invoke-virtual {p0}, Lgnu/bytecode/CodeAttr;->emitTryEnd()V

    .line 358
    invoke-virtual {p0, v4}, Lgnu/bytecode/CodeAttr;->emitCatchStart(Lgnu/bytecode/Variable;)V

    .line 359
    invoke-virtual {p0, v0}, Lgnu/bytecode/CodeAttr;->emitLoad(Lgnu/bytecode/Variable;)V

    .line 360
    instance-of p3, p2, Lgnu/expr/ConsumerTarget;

    if-eqz p3, :cond_6

    .line 362
    invoke-virtual {p1}, Lgnu/expr/Compilation;->loadCallContext()V

    const/4 p1, 0x3

    const-string p2, "handleException$X"

    .line 363
    invoke-virtual {v1, p2, p1}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    move-result-object p1

    .line 364
    invoke-virtual {p0, p1}, Lgnu/bytecode/CodeAttr;->emitInvokeStatic(Lgnu/bytecode/Method;)V

    goto :goto_2

    :cond_6
    const/4 p3, 0x2

    const-string v0, "handleException"

    .line 368
    invoke-virtual {v1, v0, p3}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    move-result-object p3

    .line 369
    invoke-virtual {p0, p3}, Lgnu/bytecode/CodeAttr;->emitInvokeStatic(Lgnu/bytecode/Method;)V

    .line 370
    sget-object p3, Lgnu/bytecode/Type;->objectType:Lgnu/bytecode/ClassType;

    invoke-virtual {p2, p1, p3}, Lgnu/expr/Target;->compileFromStack(Lgnu/expr/Compilation;Lgnu/bytecode/Type;)V

    .line 372
    :goto_2
    invoke-virtual {p0}, Lgnu/bytecode/CodeAttr;->emitCatchEnd()V

    .line 374
    invoke-virtual {p0}, Lgnu/bytecode/CodeAttr;->emitTryCatchEnd()V

    .line 375
    invoke-virtual {p0}, Lgnu/bytecode/CodeAttr;->popScope()Lgnu/bytecode/Scope;

    return-void
.end method

.method public static compileConvert(Lgnu/kawa/functions/Convert;Lgnu/expr/ApplyExp;Lgnu/expr/Compilation;Lgnu/expr/Target;)V
    .locals 6

    .line 232
    invoke-virtual {p1}, Lgnu/expr/ApplyExp;->getArgs()[Lgnu/expr/Expression;

    move-result-object p1

    .line 233
    array-length v0, p1

    const/4 v1, 0x2

    if-ne v0, v1, :cond_4

    .line 235
    invoke-virtual {p2}, Lgnu/expr/Compilation;->getCode()Lgnu/bytecode/CodeAttr;

    move-result-object p0

    const/4 v0, 0x0

    .line 236
    aget-object v1, p1, v0

    invoke-static {v1}, Lkawa/standard/Scheme;->getTypeValue(Lgnu/expr/Expression;)Lgnu/bytecode/Type;

    move-result-object v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 239
    aget-object p1, p1, v2

    invoke-static {v1}, Lgnu/expr/Target;->pushValue(Lgnu/bytecode/Type;)Lgnu/expr/Target;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Lgnu/expr/Expression;->compile(Lgnu/expr/Compilation;Lgnu/expr/Target;)V

    .line 240
    invoke-virtual {p0}, Lgnu/bytecode/CodeAttr;->reachableHere()Z

    move-result p0

    if-eqz p0, :cond_3

    .line 241
    invoke-virtual {p3, p2, v1}, Lgnu/expr/Target;->compileFromStack(Lgnu/expr/Compilation;Lgnu/bytecode/Type;)V

    goto :goto_0

    .line 245
    :cond_0
    sget-object v1, Lgnu/kawa/functions/CompileMisc;->typeType:Lgnu/bytecode/ClassType;

    if-nez v1, :cond_1

    const-string v1, "gnu.bytecode.Type"

    .line 247
    invoke-static {v1}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v1

    sput-object v1, Lgnu/kawa/functions/CompileMisc;->typeType:Lgnu/bytecode/ClassType;

    .line 249
    :cond_1
    sget-object v1, Lgnu/kawa/functions/CompileMisc;->coerceMethod:Lgnu/bytecode/Method;

    if-nez v1, :cond_2

    .line 251
    sget-object v1, Lgnu/kawa/functions/CompileMisc;->typeType:Lgnu/bytecode/ClassType;

    sget-object v3, Lgnu/expr/Compilation;->apply1args:[Lgnu/bytecode/Type;

    sget-object v4, Lgnu/bytecode/Type;->pointer_type:Lgnu/bytecode/ClassType;

    const-string v5, "coerceFromObject"

    invoke-virtual {v1, v5, v3, v4, v2}, Lgnu/bytecode/ClassType;->addMethod(Ljava/lang/String;[Lgnu/bytecode/Type;Lgnu/bytecode/Type;I)Lgnu/bytecode/Method;

    move-result-object v1

    sput-object v1, Lgnu/kawa/functions/CompileMisc;->coerceMethod:Lgnu/bytecode/Method;

    .line 256
    :cond_2
    aget-object v0, p1, v0

    sget-object v1, Lgnu/kawa/lispexpr/LangObjType;->typeClassType:Lgnu/kawa/lispexpr/LangObjType;

    invoke-virtual {v0, p2, v1}, Lgnu/expr/Expression;->compile(Lgnu/expr/Compilation;Lgnu/bytecode/Type;)V

    .line 257
    aget-object p1, p1, v2

    sget-object v0, Lgnu/expr/Target;->pushObject:Lgnu/expr/Target;

    invoke-virtual {p1, p2, v0}, Lgnu/expr/Expression;->compile(Lgnu/expr/Compilation;Lgnu/expr/Target;)V

    .line 258
    sget-object p1, Lgnu/kawa/functions/CompileMisc;->coerceMethod:Lgnu/bytecode/Method;

    invoke-virtual {p0, p1}, Lgnu/bytecode/CodeAttr;->emitInvokeVirtual(Lgnu/bytecode/Method;)V

    .line 259
    sget-object p0, Lgnu/bytecode/Type;->pointer_type:Lgnu/bytecode/ClassType;

    invoke-virtual {p3, p2, p0}, Lgnu/expr/Target;->compileFromStack(Lgnu/expr/Compilation;Lgnu/bytecode/Type;)V

    :cond_3
    :goto_0
    return-void

    .line 234
    :cond_4
    new-instance p1, Ljava/lang/Error;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "wrong number of arguments to "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lgnu/kawa/functions/Convert;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static forConvert(Ljava/lang/Object;)Lgnu/kawa/functions/CompileMisc;
    .locals 2

    .line 25
    new-instance v0, Lgnu/kawa/functions/CompileMisc;

    check-cast p0, Lgnu/mapping/Procedure;

    const/4 v1, 0x2

    invoke-direct {v0, p0, v1}, Lgnu/kawa/functions/CompileMisc;-><init>(Lgnu/mapping/Procedure;I)V

    return-object v0
.end method

.method public static forNot(Ljava/lang/Object;)Lgnu/kawa/functions/CompileMisc;
    .locals 2

    .line 30
    new-instance v0, Lgnu/kawa/functions/CompileMisc;

    check-cast p0, Lgnu/mapping/Procedure;

    const/4 v1, 0x3

    invoke-direct {v0, p0, v1}, Lgnu/kawa/functions/CompileMisc;-><init>(Lgnu/mapping/Procedure;I)V

    return-object v0
.end method

.method public static validateApplyAppendValues(Lgnu/expr/ApplyExp;Lgnu/expr/InlineCalls;Lgnu/bytecode/Type;Lgnu/mapping/Procedure;)Lgnu/expr/Expression;
    .locals 2

    .line 139
    invoke-virtual {p0, p1}, Lgnu/expr/ApplyExp;->visitArgs(Lgnu/expr/InlineCalls;)V

    .line 140
    invoke-virtual {p0}, Lgnu/expr/ApplyExp;->getArgs()[Lgnu/expr/Expression;

    move-result-object p2

    .line 141
    array-length v0, p2

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 p0, 0x0

    .line 142
    aget-object p0, p2, p0

    return-object p0

    .line 143
    :cond_0
    array-length p2, p2

    if-nez p2, :cond_1

    .line 144
    sget-object p0, Lgnu/expr/QuoteExp;->voidExp:Lgnu/expr/QuoteExp;

    return-object p0

    .line 145
    :cond_1
    invoke-virtual {p0, p3, p1}, Lgnu/expr/ApplyExp;->inlineIfConstant(Lgnu/mapping/Procedure;Lgnu/expr/InlineCalls;)Lgnu/expr/Expression;

    move-result-object p1

    if-eq p1, p0, :cond_2

    return-object p1

    :cond_2
    return-object p0
.end method

.method public static validateApplyCallCC(Lgnu/expr/ApplyExp;Lgnu/expr/InlineCalls;Lgnu/bytecode/Type;Lgnu/mapping/Procedure;)Lgnu/expr/Expression;
    .locals 2

    .line 294
    invoke-static {p0}, Lgnu/kawa/functions/CompileMisc;->canInlineCallCC(Lgnu/expr/ApplyExp;)Lgnu/expr/LambdaExp;

    move-result-object p2

    if-eqz p2, :cond_0

    const/4 p3, 0x1

    .line 297
    invoke-virtual {p2, p3}, Lgnu/expr/LambdaExp;->setInlineOnly(Z)V

    .line 298
    iput-object p0, p2, Lgnu/expr/LambdaExp;->returnContinuation:Lgnu/expr/Expression;

    .line 299
    invoke-virtual {p1}, Lgnu/expr/InlineCalls;->getCurrentLambda()Lgnu/expr/LambdaExp;

    move-result-object p3

    iput-object p3, p2, Lgnu/expr/LambdaExp;->inlineHome:Lgnu/expr/LambdaExp;

    .line 300
    invoke-virtual {p2}, Lgnu/expr/LambdaExp;->firstDecl()Lgnu/expr/Declaration;

    move-result-object p2

    const-wide/16 v0, 0x2000

    .line 301
    invoke-virtual {p2, v0, v1}, Lgnu/expr/Declaration;->getFlag(J)Z

    move-result p3

    if-nez p3, :cond_0

    .line 302
    sget-object p3, Lgnu/kawa/functions/CompileMisc;->typeContinuation:Lgnu/bytecode/ClassType;

    invoke-virtual {p2, p3}, Lgnu/expr/Declaration;->setType(Lgnu/bytecode/Type;)V

    .line 304
    :cond_0
    invoke-virtual {p0, p1}, Lgnu/expr/ApplyExp;->visitArgs(Lgnu/expr/InlineCalls;)V

    return-object p0
.end method

.method public static validateApplyConstantFunction0(Lgnu/expr/ApplyExp;Lgnu/expr/InlineCalls;Lgnu/bytecode/Type;Lgnu/mapping/Procedure;)Lgnu/expr/Expression;
    .locals 0

    .line 50
    invoke-virtual {p0, p1}, Lgnu/expr/ApplyExp;->visitArgs(Lgnu/expr/InlineCalls;)V

    .line 51
    invoke-virtual {p0}, Lgnu/expr/ApplyExp;->getArgCount()I

    move-result p0

    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    .line 54
    invoke-static {p3, p0}, Lgnu/mapping/WrongArguments;->checkArgCount(Lgnu/mapping/Procedure;I)Ljava/lang/String;

    move-result-object p0

    .line 55
    invoke-virtual {p1, p0}, Lgnu/expr/InlineCalls;->noteError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object p0

    return-object p0

    .line 57
    :cond_0
    check-cast p3, Lgnu/kawa/functions/ConstantFunction0;

    iget-object p0, p3, Lgnu/kawa/functions/ConstantFunction0;->constant:Lgnu/expr/QuoteExp;

    return-object p0
.end method

.method public static validateApplyConvert(Lgnu/expr/ApplyExp;Lgnu/expr/InlineCalls;Lgnu/bytecode/Type;Lgnu/mapping/Procedure;)Lgnu/expr/Expression;
    .locals 4

    .line 63
    invoke-virtual {p1}, Lgnu/expr/InlineCalls;->getCompilation()Lgnu/expr/Compilation;

    move-result-object p2

    .line 64
    invoke-virtual {p2}, Lgnu/expr/Compilation;->getLanguage()Lgnu/expr/Language;

    move-result-object p3

    .line 65
    invoke-virtual {p0}, Lgnu/expr/ApplyExp;->getArgs()[Lgnu/expr/Expression;

    move-result-object v0

    .line 66
    array-length v1, v0

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    const/4 v1, 0x0

    .line 68
    aget-object v2, v0, v1

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Lgnu/expr/InlineCalls;->visit(Lgnu/expr/Expression;Lgnu/bytecode/Type;)Lgnu/expr/Expression;

    move-result-object v2

    aput-object v2, v0, v1

    .line 69
    invoke-virtual {p3, v2}, Lgnu/expr/Language;->getTypeFor(Lgnu/expr/Expression;)Lgnu/bytecode/Type;

    move-result-object p3

    .line 70
    instance-of v2, p3, Lgnu/bytecode/Type;

    if-eqz v2, :cond_0

    .line 72
    new-instance v2, Lgnu/expr/QuoteExp;

    invoke-direct {v2, p3}, Lgnu/expr/QuoteExp;-><init>(Ljava/lang/Object;)V

    aput-object v2, v0, v1

    const/4 v1, 0x1

    .line 73
    aget-object v2, v0, v1

    invoke-virtual {p1, v2, p3}, Lgnu/expr/InlineCalls;->visit(Lgnu/expr/Expression;Lgnu/bytecode/Type;)Lgnu/expr/Expression;

    move-result-object p1

    aput-object p1, v0, v1

    .line 74
    invoke-static {p3, p2}, Lgnu/kawa/reflect/CompileReflect;->checkKnownClass(Lgnu/bytecode/Type;Lgnu/expr/Compilation;)I

    .line 75
    invoke-virtual {p0, p3}, Lgnu/expr/ApplyExp;->setType(Lgnu/bytecode/Type;)V

    return-object p0

    .line 79
    :cond_0
    invoke-virtual {p0, p1}, Lgnu/expr/ApplyExp;->visitArgs(Lgnu/expr/InlineCalls;)V

    return-object p0
.end method

.method public static validateApplyFormat(Lgnu/expr/ApplyExp;Lgnu/expr/InlineCalls;Lgnu/bytecode/Type;Lgnu/mapping/Procedure;)Lgnu/expr/Expression;
    .locals 6

    .line 97
    invoke-virtual {p0, p1}, Lgnu/expr/ApplyExp;->visitArgs(Lgnu/expr/InlineCalls;)V

    .line 98
    sget-object p1, Lgnu/bytecode/Type;->objectType:Lgnu/bytecode/ClassType;

    .line 99
    invoke-virtual {p0}, Lgnu/expr/ApplyExp;->getArgs()[Lgnu/expr/Expression;

    move-result-object p2

    .line 100
    array-length p3, p2

    if-lez p3, :cond_6

    const-string p3, "gnu.kawa.functions.Format"

    .line 102
    invoke-static {p3}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object p3

    const/4 v0, 0x0

    .line 103
    aget-object v1, p2, v0

    invoke-virtual {v1}, Lgnu/expr/Expression;->valueIfConstant()Ljava/lang/Object;

    move-result-object v1

    .line 104
    aget-object v2, p2, v0

    invoke-virtual {v2}, Lgnu/expr/Expression;->getType()Lgnu/bytecode/Type;

    move-result-object v2

    .line 105
    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const/4 v4, 0x1

    if-eq v1, v3, :cond_4

    sget-object v3, Lgnu/kawa/lispexpr/LangObjType;->stringType:Lgnu/kawa/lispexpr/LangObjType;

    invoke-virtual {v2, v3}, Lgnu/bytecode/Type;->isSubtype(Lgnu/bytecode/Type;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_1

    .line 115
    :cond_0
    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    if-eq v1, v3, :cond_2

    const-string v3, "java.io.Writer"

    invoke-static {v3}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v3

    invoke-virtual {v2, v3}, Lgnu/bytecode/Type;->isSubtype(Lgnu/bytecode/Type;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    :cond_1
    const-string p2, "java.io.OutputStream"

    .line 129
    invoke-static {p2}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object p2

    invoke-virtual {v2, p2}, Lgnu/bytecode/Type;->isSubtype(Lgnu/bytecode/Type;)Z

    move-result p2

    if-eqz p2, :cond_6

    .line 130
    sget-object p1, Lgnu/bytecode/Type;->voidType:Lgnu/bytecode/PrimType;

    goto :goto_3

    .line 118
    :cond_2
    :goto_0
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    if-ne v1, p0, :cond_3

    .line 120
    array-length p0, p2

    new-array p0, p0, [Lgnu/expr/Expression;

    .line 121
    sget-object p1, Lgnu/expr/QuoteExp;->nullExp:Lgnu/expr/QuoteExp;

    aput-object p1, p0, v0

    .line 122
    array-length p1, p2

    sub-int/2addr p1, v4

    invoke-static {p2, v4, p0, v4, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object p2, p0

    .line 125
    :cond_3
    new-instance p0, Lgnu/expr/ApplyExp;

    const/4 p1, 0x3

    const-string v0, "formatToWriter"

    invoke-virtual {p3, v0, p1}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lgnu/expr/ApplyExp;-><init>(Lgnu/bytecode/Method;[Lgnu/expr/Expression;)V

    .line 126
    sget-object p1, Lgnu/bytecode/Type;->voidType:Lgnu/bytecode/PrimType;

    invoke-virtual {p0, p1}, Lgnu/expr/ApplyExp;->setType(Lgnu/bytecode/Type;)V

    return-object p0

    .line 107
    :cond_4
    :goto_1
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-ne v1, p0, :cond_5

    const/4 p0, 0x1

    goto :goto_2

    :cond_5
    const/4 p0, 0x0

    .line 108
    :goto_2
    array-length p1, p2

    add-int/2addr p1, v4

    sub-int/2addr p1, p0

    new-array v1, p1, [Lgnu/expr/Expression;

    .line 109
    new-instance v2, Lgnu/expr/QuoteExp;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    sget-object v5, Lgnu/bytecode/Type;->intType:Lgnu/bytecode/PrimType;

    invoke-direct {v2, v3, v5}, Lgnu/expr/QuoteExp;-><init>(Ljava/lang/Object;Lgnu/bytecode/Type;)V

    aput-object v2, v1, v0

    sub-int/2addr p1, v4

    .line 110
    invoke-static {p2, p0, v1, v4, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 111
    new-instance p0, Lgnu/expr/ApplyExp;

    const/4 p1, 0x2

    const-string p2, "formatToString"

    invoke-virtual {p3, p2, p1}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    move-result-object p1

    invoke-direct {p0, p1, v1}, Lgnu/expr/ApplyExp;-><init>(Lgnu/bytecode/Method;[Lgnu/expr/Expression;)V

    .line 112
    sget-object p1, Lgnu/bytecode/Type;->javalangStringType:Lgnu/bytecode/ClassType;

    invoke-virtual {p0, p1}, Lgnu/expr/ApplyExp;->setType(Lgnu/bytecode/Type;)V

    return-object p0

    .line 132
    :cond_6
    :goto_3
    invoke-virtual {p0, p1}, Lgnu/expr/ApplyExp;->setType(Lgnu/bytecode/Type;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static validateApplyMakeProcedure(Lgnu/expr/ApplyExp;Lgnu/expr/InlineCalls;Lgnu/bytecode/Type;Lgnu/mapping/Procedure;)Lgnu/expr/Expression;
    .locals 10

    .line 154
    invoke-virtual {p0, p1}, Lgnu/expr/ApplyExp;->visitArgs(Lgnu/expr/InlineCalls;)V

    .line 155
    invoke-virtual {p0}, Lgnu/expr/ApplyExp;->getArgs()[Lgnu/expr/Expression;

    move-result-object p1

    .line 156
    array-length p2, p1

    const/4 p3, 0x0

    const/4 v0, 0x0

    move-object v1, p3

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    const-string v4, "method"

    const-string v5, "name"

    const/4 v6, 0x1

    if-ge v2, p2, :cond_3

    .line 162
    aget-object v7, p1, v2

    .line 164
    instance-of v8, v7, Lgnu/expr/QuoteExp;

    if-eqz v8, :cond_1

    move-object v8, v7

    check-cast v8, Lgnu/expr/QuoteExp;

    invoke-virtual {v8}, Lgnu/expr/QuoteExp;->getValue()Ljava/lang/Object;

    move-result-object v8

    instance-of v9, v8, Lgnu/expr/Keyword;

    if-eqz v9, :cond_1

    .line 167
    check-cast v8, Lgnu/expr/Keyword;

    invoke-virtual {v8}, Lgnu/expr/Keyword;->getName()Ljava/lang/String;

    move-result-object v7

    add-int/lit8 v2, v2, 0x1

    .line 168
    aget-object v8, p1, v2

    if-ne v7, v5, :cond_0

    .line 171
    instance-of v4, v8, Lgnu/expr/QuoteExp;

    if-eqz v4, :cond_2

    .line 172
    check-cast v8, Lgnu/expr/QuoteExp;

    invoke-virtual {v8}, Lgnu/expr/QuoteExp;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_0
    if-ne v7, v4, :cond_2

    add-int/lit8 v3, v3, 0x1

    move-object p3, v8

    goto :goto_1

    :cond_1
    add-int/lit8 v3, v3, 0x1

    move-object p3, v7

    :cond_2
    :goto_1
    add-int/2addr v2, v6

    goto :goto_0

    :cond_3
    if-ne v3, v6, :cond_8

    .line 188
    instance-of v2, p3, Lgnu/expr/LambdaExp;

    if-eqz v2, :cond_8

    .line 190
    move-object p0, p3

    check-cast p0, Lgnu/expr/LambdaExp;

    :goto_2
    if-ge v0, p2, :cond_7

    .line 193
    aget-object v2, p1, v0

    .line 195
    instance-of v3, v2, Lgnu/expr/QuoteExp;

    if-eqz v3, :cond_6

    check-cast v2, Lgnu/expr/QuoteExp;

    invoke-virtual {v2}, Lgnu/expr/QuoteExp;->getValue()Ljava/lang/Object;

    move-result-object v2

    instance-of v3, v2, Lgnu/expr/Keyword;

    if-eqz v3, :cond_6

    .line 198
    check-cast v2, Lgnu/expr/Keyword;

    invoke-virtual {v2}, Lgnu/expr/Keyword;->getName()Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v0, v0, 0x1

    .line 199
    aget-object v3, p1, v0

    if-ne v2, v5, :cond_4

    .line 201
    invoke-virtual {p0, v1}, Lgnu/expr/LambdaExp;->setName(Ljava/lang/String;)V

    goto :goto_3

    :cond_4
    if-ne v2, v4, :cond_5

    goto :goto_3

    .line 205
    :cond_5
    sget-object v7, Lgnu/mapping/Namespace;->EmptyNamespace:Lgnu/mapping/Namespace;

    invoke-virtual {v7, v2}, Lgnu/mapping/Namespace;->getSymbol(Ljava/lang/String;)Lgnu/mapping/Symbol;

    move-result-object v2

    invoke-virtual {p0, v2, v3}, Lgnu/expr/LambdaExp;->setProperty(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_6
    :goto_3
    add-int/2addr v0, v6

    goto :goto_2

    :cond_7
    return-object p3

    :cond_8
    return-object p0
.end method

.method public static validateApplyMap(Lgnu/expr/ApplyExp;Lgnu/expr/InlineCalls;Lgnu/bytecode/Type;Lgnu/mapping/Procedure;)Lgnu/expr/Expression;
    .locals 23

    move-object/from16 v0, p1

    .line 431
    move-object/from16 v1, p3

    check-cast v1, Lgnu/kawa/functions/Map;

    .line 432
    iget-boolean v2, v1, Lgnu/kawa/functions/Map;->collect:Z

    .line 435
    invoke-virtual/range {p0 .. p1}, Lgnu/expr/ApplyExp;->visitArgs(Lgnu/expr/InlineCalls;)V

    .line 436
    invoke-virtual/range {p0 .. p0}, Lgnu/expr/ApplyExp;->getArgs()[Lgnu/expr/Expression;

    move-result-object v3

    .line 437
    array-length v4, v3

    const/4 v5, 0x2

    if-ge v4, v5, :cond_0

    return-object p0

    :cond_0
    add-int/lit8 v4, v4, -0x1

    const/4 v6, 0x0

    .line 443
    aget-object v7, v3, v6

    .line 447
    invoke-virtual {v7}, Lgnu/expr/Expression;->side_effects()Z

    move-result v8

    const/4 v9, 0x1

    xor-int/2addr v8, v9

    new-array v10, v9, [Lgnu/expr/Expression;

    aput-object v7, v10, v6

    .line 452
    new-instance v11, Lgnu/expr/LetExp;

    invoke-direct {v11, v10}, Lgnu/expr/LetExp;-><init>([Lgnu/expr/Expression;)V

    .line 453
    sget-object v10, Lgnu/expr/Compilation;->typeProcedure:Lgnu/bytecode/ClassType;

    const-string v12, "%proc"

    invoke-virtual {v11, v12, v10}, Lgnu/expr/LetExp;->addDeclaration(Ljava/lang/Object;Lgnu/bytecode/Type;)Lgnu/expr/Declaration;

    move-result-object v10

    .line 455
    aget-object v12, v3, v6

    invoke-virtual {v10, v12}, Lgnu/expr/Declaration;->noteValue(Lgnu/expr/Expression;)V

    new-array v12, v9, [Lgnu/expr/Expression;

    .line 459
    new-instance v13, Lgnu/expr/LetExp;

    invoke-direct {v13, v12}, Lgnu/expr/LetExp;-><init>([Lgnu/expr/Expression;)V

    .line 460
    invoke-virtual {v11, v13}, Lgnu/expr/LetExp;->setBody(Lgnu/expr/Expression;)V

    .line 461
    new-instance v14, Lgnu/expr/LambdaExp;

    if-eqz v2, :cond_1

    add-int/lit8 v15, v4, 0x1

    goto :goto_0

    :cond_1
    move v15, v4

    :goto_0
    invoke-direct {v14, v15}, Lgnu/expr/LambdaExp;-><init>(I)V

    aput-object v14, v12, v6

    const-string v12, "%loop"

    .line 463
    invoke-virtual {v13, v12}, Lgnu/expr/LetExp;->addDeclaration(Ljava/lang/Object;)Lgnu/expr/Declaration;

    move-result-object v12

    .line 464
    invoke-virtual {v12, v14}, Lgnu/expr/Declaration;->noteValue(Lgnu/expr/Expression;)V

    .line 467
    new-array v15, v4, [Lgnu/expr/Expression;

    .line 468
    new-instance v9, Lgnu/expr/LetExp;

    invoke-direct {v9, v15}, Lgnu/expr/LetExp;-><init>([Lgnu/expr/Expression;)V

    .line 470
    new-array v5, v4, [Lgnu/expr/Declaration;

    .line 471
    new-array v6, v4, [Lgnu/expr/Declaration;

    move-object/from16 v16, v7

    const/4 v7, 0x0

    :goto_1
    if-ge v7, v4, :cond_2

    move-object/from16 v17, v11

    .line 474
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v18, v13

    const-string v13, "arg"

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 475
    invoke-virtual {v14, v11}, Lgnu/expr/LambdaExp;->addDeclaration(Ljava/lang/Object;)Lgnu/expr/Declaration;

    move-result-object v13

    aput-object v13, v5, v7

    .line 476
    sget-object v13, Lgnu/expr/Compilation;->typePair:Lgnu/bytecode/ClassType;

    invoke-virtual {v9, v11, v13}, Lgnu/expr/LetExp;->addDeclaration(Ljava/lang/Object;Lgnu/bytecode/Type;)Lgnu/expr/Declaration;

    move-result-object v11

    aput-object v11, v6, v7

    .line 477
    new-instance v11, Lgnu/expr/ReferenceExp;

    aget-object v13, v5, v7

    invoke-direct {v11, v13}, Lgnu/expr/ReferenceExp;-><init>(Lgnu/expr/Declaration;)V

    aput-object v11, v15, v7

    .line 478
    aget-object v13, v6, v7

    invoke-virtual {v13, v11}, Lgnu/expr/Declaration;->noteValue(Lgnu/expr/Expression;)V

    add-int/lit8 v7, v7, 0x1

    move-object/from16 v11, v17

    move-object/from16 v13, v18

    goto :goto_1

    :cond_2
    move-object/from16 v17, v11

    move-object/from16 v18, v13

    if-eqz v2, :cond_3

    const-string v11, "result"

    .line 480
    invoke-virtual {v14, v11}, Lgnu/expr/LambdaExp;->addDeclaration(Ljava/lang/Object;)Lgnu/expr/Declaration;

    move-result-object v11

    goto :goto_2

    :cond_3
    const/4 v11, 0x0

    :goto_2
    add-int/lit8 v13, v4, 0x1

    .line 481
    new-array v15, v13, [Lgnu/expr/Expression;

    if-eqz v2, :cond_4

    move v7, v13

    goto :goto_3

    :cond_4
    move v7, v4

    .line 482
    :goto_3
    new-array v7, v7, [Lgnu/expr/Expression;

    move/from16 v19, v13

    const/4 v13, 0x0

    :goto_4
    if-ge v13, v4, :cond_5

    add-int/lit8 v20, v13, 0x1

    move-object/from16 v21, v3

    .line 485
    new-instance v3, Lgnu/expr/ReferenceExp;

    move-object/from16 v22, v5

    aget-object v5, v6, v13

    invoke-direct {v3, v5}, Lgnu/expr/ReferenceExp;-><init>(Lgnu/expr/Declaration;)V

    const-string v5, "car"

    invoke-static {v3, v5}, Lgnu/kawa/reflect/SlotGet;->makeGetField(Lgnu/expr/Expression;Ljava/lang/String;)Lgnu/expr/ApplyExp;

    move-result-object v3

    const/4 v5, 0x0

    invoke-virtual {v0, v3, v5}, Lgnu/expr/InlineCalls;->visitApplyOnly(Lgnu/expr/ApplyExp;Lgnu/bytecode/Type;)Lgnu/expr/Expression;

    move-result-object v3

    aput-object v3, v15, v20

    .line 486
    new-instance v3, Lgnu/expr/ReferenceExp;

    aget-object v5, v6, v13

    invoke-direct {v3, v5}, Lgnu/expr/ReferenceExp;-><init>(Lgnu/expr/Declaration;)V

    const-string v5, "cdr"

    invoke-static {v3, v5}, Lgnu/kawa/reflect/SlotGet;->makeGetField(Lgnu/expr/Expression;Ljava/lang/String;)Lgnu/expr/ApplyExp;

    move-result-object v3

    const/4 v5, 0x0

    invoke-virtual {v0, v3, v5}, Lgnu/expr/InlineCalls;->visitApplyOnly(Lgnu/expr/ApplyExp;Lgnu/bytecode/Type;)Lgnu/expr/Expression;

    move-result-object v3

    aput-object v3, v7, v13

    move/from16 v13, v20

    move-object/from16 v3, v21

    move-object/from16 v5, v22

    goto :goto_4

    :cond_5
    move-object/from16 v21, v3

    move-object/from16 v22, v5

    if-nez v8, :cond_6

    .line 489
    new-instance v3, Lgnu/expr/ReferenceExp;

    invoke-direct {v3, v10}, Lgnu/expr/ReferenceExp;-><init>(Lgnu/expr/Declaration;)V

    move-object/from16 v16, v3

    :cond_6
    const/4 v3, 0x0

    .line 490
    aput-object v16, v15, v3

    .line 491
    new-instance v5, Lgnu/expr/ApplyExp;

    new-instance v6, Lgnu/expr/ReferenceExp;

    iget-object v10, v1, Lgnu/kawa/functions/Map;->applyFieldDecl:Lgnu/expr/Declaration;

    invoke-direct {v6, v10}, Lgnu/expr/ReferenceExp;-><init>(Lgnu/expr/Declaration;)V

    invoke-direct {v5, v6, v15}, Lgnu/expr/ApplyExp;-><init>(Lgnu/expr/Expression;[Lgnu/expr/Expression;)V

    const/4 v6, 0x0

    invoke-virtual {v0, v5, v6}, Lgnu/expr/InlineCalls;->visitApplyOnly(Lgnu/expr/ApplyExp;Lgnu/bytecode/Type;)Lgnu/expr/Expression;

    move-result-object v5

    if-eqz v2, :cond_7

    const/4 v6, 0x2

    new-array v10, v6, [Lgnu/expr/Expression;

    aput-object v5, v10, v3

    .line 496
    new-instance v3, Lgnu/expr/ReferenceExp;

    invoke-direct {v3, v11}, Lgnu/expr/ReferenceExp;-><init>(Lgnu/expr/Declaration;)V

    const/4 v6, 0x1

    aput-object v3, v10, v6

    .line 497
    sget-object v3, Lgnu/expr/Compilation;->typePair:Lgnu/bytecode/ClassType;

    const-string v6, "make"

    invoke-static {v3, v6, v10}, Lgnu/kawa/reflect/Invoke;->makeInvokeStatic(Lgnu/bytecode/ClassType;Ljava/lang/String;[Lgnu/expr/Expression;)Lgnu/expr/ApplyExp;

    move-result-object v3

    aput-object v3, v7, v4

    .line 500
    :cond_7
    new-instance v3, Lgnu/expr/ApplyExp;

    new-instance v6, Lgnu/expr/ReferenceExp;

    invoke-direct {v6, v12}, Lgnu/expr/ReferenceExp;-><init>(Lgnu/expr/Declaration;)V

    invoke-direct {v3, v6, v7}, Lgnu/expr/ApplyExp;-><init>(Lgnu/expr/Expression;[Lgnu/expr/Expression;)V

    const/4 v6, 0x0

    invoke-virtual {v0, v3, v6}, Lgnu/expr/InlineCalls;->visitApplyOnly(Lgnu/expr/ApplyExp;Lgnu/bytecode/Type;)Lgnu/expr/Expression;

    move-result-object v3

    if-eqz v2, :cond_8

    goto :goto_5

    .line 501
    :cond_8
    new-instance v6, Lgnu/expr/BeginExp;

    invoke-direct {v6, v5, v3}, Lgnu/expr/BeginExp;-><init>(Lgnu/expr/Expression;Lgnu/expr/Expression;)V

    move-object v3, v6

    :goto_5
    iput-object v3, v14, Lgnu/expr/LambdaExp;->body:Lgnu/expr/Expression;

    .line 502
    iget-object v3, v14, Lgnu/expr/LambdaExp;->body:Lgnu/expr/Expression;

    invoke-virtual {v9, v3}, Lgnu/expr/LetExp;->setBody(Lgnu/expr/Expression;)V

    .line 503
    iput-object v9, v14, Lgnu/expr/LambdaExp;->body:Lgnu/expr/Expression;

    if-eqz v2, :cond_9

    move/from16 v13, v19

    goto :goto_6

    :cond_9
    move v13, v4

    .line 504
    :goto_6
    new-array v3, v13, [Lgnu/expr/Expression;

    .line 505
    new-instance v5, Lgnu/expr/QuoteExp;

    sget-object v6, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    invoke-direct {v5, v6}, Lgnu/expr/QuoteExp;-><init>(Ljava/lang/Object;)V

    move v6, v4

    :goto_7
    add-int/lit8 v6, v6, -0x1

    if-ltz v6, :cond_b

    const/4 v7, 0x2

    new-array v9, v7, [Lgnu/expr/Expression;

    .line 509
    new-instance v10, Lgnu/expr/ReferenceExp;

    aget-object v13, v22, v6

    invoke-direct {v10, v13}, Lgnu/expr/ReferenceExp;-><init>(Lgnu/expr/Declaration;)V

    const/4 v13, 0x0

    aput-object v10, v9, v13

    const/4 v10, 0x1

    aput-object v5, v9, v10

    if-eqz v2, :cond_a

    .line 511
    new-instance v10, Lgnu/expr/ReferenceExp;

    invoke-direct {v10, v11}, Lgnu/expr/ReferenceExp;-><init>(Lgnu/expr/Declaration;)V

    goto :goto_8

    :cond_a
    sget-object v10, Lgnu/expr/QuoteExp;->voidExp:Lgnu/expr/QuoteExp;

    .line 514
    :goto_8
    new-instance v13, Lgnu/expr/IfExp;

    new-instance v15, Lgnu/expr/ApplyExp;

    iget-object v7, v1, Lgnu/kawa/functions/Map;->isEq:Lgnu/kawa/functions/IsEq;

    invoke-direct {v15, v7, v9}, Lgnu/expr/ApplyExp;-><init>(Lgnu/mapping/Procedure;[Lgnu/expr/Expression;)V

    const/4 v7, 0x0

    invoke-virtual {v0, v15, v7}, Lgnu/expr/InlineCalls;->visitApplyOnly(Lgnu/expr/ApplyExp;Lgnu/bytecode/Type;)Lgnu/expr/Expression;

    move-result-object v9

    iget-object v7, v14, Lgnu/expr/LambdaExp;->body:Lgnu/expr/Expression;

    invoke-direct {v13, v9, v10, v7}, Lgnu/expr/IfExp;-><init>(Lgnu/expr/Expression;Lgnu/expr/Expression;Lgnu/expr/Expression;)V

    iput-object v13, v14, Lgnu/expr/LambdaExp;->body:Lgnu/expr/Expression;

    add-int/lit8 v7, v6, 0x1

    .line 516
    aget-object v7, v21, v7

    aput-object v7, v3, v6

    goto :goto_7

    :cond_b
    if-eqz v2, :cond_c

    .line 519
    aput-object v5, v3, v4

    .line 521
    :cond_c
    new-instance v1, Lgnu/expr/ApplyExp;

    new-instance v4, Lgnu/expr/ReferenceExp;

    invoke-direct {v4, v12}, Lgnu/expr/ReferenceExp;-><init>(Lgnu/expr/Declaration;)V

    invoke-direct {v1, v4, v3}, Lgnu/expr/ApplyExp;-><init>(Lgnu/expr/Expression;[Lgnu/expr/Expression;)V

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3}, Lgnu/expr/InlineCalls;->visitApplyOnly(Lgnu/expr/ApplyExp;Lgnu/bytecode/Type;)Lgnu/expr/Expression;

    move-result-object v0

    if-eqz v2, :cond_d

    const/4 v1, 0x1

    new-array v1, v1, [Lgnu/expr/Expression;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    .line 526
    sget-object v0, Lgnu/expr/Compilation;->scmListType:Lgnu/bytecode/ClassType;

    const-string v2, "reverseInPlace"

    invoke-static {v0, v2, v1}, Lgnu/kawa/reflect/Invoke;->makeInvokeStatic(Lgnu/bytecode/ClassType;Ljava/lang/String;[Lgnu/expr/Expression;)Lgnu/expr/ApplyExp;

    move-result-object v0

    :cond_d
    move-object/from16 v1, v18

    .line 529
    invoke-virtual {v1, v0}, Lgnu/expr/LetExp;->setBody(Lgnu/expr/Expression;)V

    if-eqz v8, :cond_e

    return-object v1

    :cond_e
    return-object v17
.end method

.method public static validateApplyNot(Lgnu/expr/ApplyExp;Lgnu/expr/InlineCalls;Lgnu/bytecode/Type;Lgnu/mapping/Procedure;)Lgnu/expr/Expression;
    .locals 1

    .line 86
    invoke-virtual {p0, p1}, Lgnu/expr/ApplyExp;->visitArgs(Lgnu/expr/InlineCalls;)V

    .line 87
    invoke-virtual {p1}, Lgnu/expr/InlineCalls;->getCompilation()Lgnu/expr/Compilation;

    move-result-object p2

    invoke-virtual {p2}, Lgnu/expr/Compilation;->getLanguage()Lgnu/expr/Language;

    move-result-object p2

    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-virtual {p2, v0}, Lgnu/expr/Language;->getTypeFor(Ljava/lang/Class;)Lgnu/bytecode/Type;

    move-result-object p2

    invoke-virtual {p0, p2}, Lgnu/expr/ApplyExp;->setType(Lgnu/bytecode/Type;)V

    .line 88
    invoke-virtual {p0, p3, p1}, Lgnu/expr/ApplyExp;->inlineIfConstant(Lgnu/mapping/Procedure;Lgnu/expr/InlineCalls;)Lgnu/expr/Expression;

    move-result-object p0

    return-object p0
.end method

.method public static validateApplyValuesMap(Lgnu/expr/ApplyExp;Lgnu/expr/InlineCalls;Lgnu/bytecode/Type;Lgnu/mapping/Procedure;)Lgnu/expr/Expression;
    .locals 0

    .line 216
    invoke-virtual {p0, p1}, Lgnu/expr/ApplyExp;->visitArgs(Lgnu/expr/InlineCalls;)V

    .line 217
    check-cast p3, Lgnu/kawa/functions/ValuesMap;

    invoke-static {p0, p3}, Lgnu/kawa/functions/ValuesMap;->canInline(Lgnu/expr/ApplyExp;Lgnu/kawa/functions/ValuesMap;)Lgnu/expr/LambdaExp;

    move-result-object p2

    if-eqz p2, :cond_0

    const/4 p3, 0x1

    .line 220
    invoke-virtual {p2, p3}, Lgnu/expr/LambdaExp;->setInlineOnly(Z)V

    .line 221
    iput-object p0, p2, Lgnu/expr/LambdaExp;->returnContinuation:Lgnu/expr/Expression;

    .line 222
    invoke-virtual {p1}, Lgnu/expr/InlineCalls;->getCurrentLambda()Lgnu/expr/LambdaExp;

    move-result-object p1

    iput-object p1, p2, Lgnu/expr/LambdaExp;->inlineHome:Lgnu/expr/LambdaExp;

    :cond_0
    return-object p0
.end method


# virtual methods
.method public compile(Lgnu/expr/ApplyExp;Lgnu/expr/Compilation;Lgnu/expr/Target;)V
    .locals 2

    .line 35
    iget v0, p0, Lgnu/kawa/functions/CompileMisc;->code:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 41
    iget-object v0, p0, Lgnu/kawa/functions/CompileMisc;->proc:Lgnu/mapping/Procedure;

    check-cast v0, Lgnu/kawa/functions/Not;

    invoke-virtual {p0, v0, p1, p2, p3}, Lgnu/kawa/functions/CompileMisc;->compileNot(Lgnu/kawa/functions/Not;Lgnu/expr/ApplyExp;Lgnu/expr/Compilation;Lgnu/expr/Target;)V

    return-void

    .line 43
    :cond_0
    new-instance p1, Ljava/lang/Error;

    invoke-direct {p1}, Ljava/lang/Error;-><init>()V

    throw p1

    .line 38
    :cond_1
    iget-object v0, p0, Lgnu/kawa/functions/CompileMisc;->proc:Lgnu/mapping/Procedure;

    check-cast v0, Lgnu/kawa/functions/Convert;

    invoke-static {v0, p1, p2, p3}, Lgnu/kawa/functions/CompileMisc;->compileConvert(Lgnu/kawa/functions/Convert;Lgnu/expr/ApplyExp;Lgnu/expr/Compilation;Lgnu/expr/Target;)V

    return-void
.end method

.method public compileNot(Lgnu/kawa/functions/Not;Lgnu/expr/ApplyExp;Lgnu/expr/Compilation;Lgnu/expr/Target;)V
    .locals 5

    .line 265
    invoke-virtual {p2}, Lgnu/expr/ApplyExp;->getArgs()[Lgnu/expr/Expression;

    move-result-object p2

    const/4 v0, 0x0

    aget-object p2, p2, v0

    .line 266
    iget-object p1, p1, Lgnu/kawa/functions/Not;->language:Lgnu/expr/Language;

    .line 267
    instance-of v1, p4, Lgnu/expr/ConditionalTarget;

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 269
    check-cast p4, Lgnu/expr/ConditionalTarget;

    .line 270
    new-instance v0, Lgnu/expr/ConditionalTarget;

    iget-object v1, p4, Lgnu/expr/ConditionalTarget;->ifFalse:Lgnu/bytecode/Label;

    iget-object v3, p4, Lgnu/expr/ConditionalTarget;->ifTrue:Lgnu/bytecode/Label;

    invoke-direct {v0, v1, v3, p1}, Lgnu/expr/ConditionalTarget;-><init>(Lgnu/bytecode/Label;Lgnu/bytecode/Label;Lgnu/expr/Language;)V

    .line 272
    iget-boolean p1, p4, Lgnu/expr/ConditionalTarget;->trueBranchComesFirst:Z

    xor-int/2addr p1, v2

    iput-boolean p1, v0, Lgnu/expr/ConditionalTarget;->trueBranchComesFirst:Z

    .line 273
    invoke-virtual {p2, p3, v0}, Lgnu/expr/Expression;->compile(Lgnu/expr/Compilation;Lgnu/expr/Target;)V

    return-void

    .line 276
    :cond_0
    invoke-virtual {p3}, Lgnu/expr/Compilation;->getCode()Lgnu/bytecode/CodeAttr;

    move-result-object v1

    .line 277
    invoke-virtual {p4}, Lgnu/expr/Target;->getType()Lgnu/bytecode/Type;

    move-result-object v3

    .line 278
    instance-of v4, p4, Lgnu/expr/StackTarget;

    if-eqz v4, :cond_1

    invoke-virtual {v3}, Lgnu/bytecode/Type;->getSignature()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x5a

    if-ne v3, v4, :cond_1

    .line 280
    invoke-virtual {p2, p3, p4}, Lgnu/expr/Expression;->compile(Lgnu/expr/Compilation;Lgnu/expr/Target;)V

    .line 281
    invoke-virtual {p4}, Lgnu/expr/Target;->getType()Lgnu/bytecode/Type;

    move-result-object p1

    invoke-virtual {v1, p1}, Lgnu/bytecode/CodeAttr;->emitNot(Lgnu/bytecode/Type;)V

    goto :goto_0

    .line 285
    :cond_1
    invoke-virtual {p1, v2}, Lgnu/expr/Language;->booleanObject(Z)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lgnu/expr/QuoteExp;->getInstance(Ljava/lang/Object;)Lgnu/expr/QuoteExp;

    move-result-object v1

    .line 286
    invoke-virtual {p1, v0}, Lgnu/expr/Language;->booleanObject(Z)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lgnu/expr/QuoteExp;->getInstance(Ljava/lang/Object;)Lgnu/expr/QuoteExp;

    move-result-object p1

    .line 287
    invoke-static {p2, p1, v1, p3, p4}, Lgnu/expr/IfExp;->compile(Lgnu/expr/Expression;Lgnu/expr/Expression;Lgnu/expr/Expression;Lgnu/expr/Compilation;Lgnu/expr/Target;)V

    :goto_0
    return-void
.end method
