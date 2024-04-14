.class public Lcom/google/appinventor/components/runtime/util/KodularDynamicUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/appinventor/components/runtime/util/KodularDynamicUtil$ComponentReturnHelper;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getChildViewHolderById(ILjava/util/List;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/google/appinventor/components/runtime/util/KodularDynamicModel;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 41
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/appinventor/components/runtime/util/KodularDynamicModel;

    .line 42
    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/util/KodularDynamicModel;->getId()I

    move-result v1

    if-ne v1, p0, :cond_0

    .line 43
    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/util/KodularDynamicModel;->getChildViewHolder()Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getObjectById(ILjava/util/List;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/google/appinventor/components/runtime/util/KodularDynamicModel;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 23
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/appinventor/components/runtime/util/KodularDynamicModel;

    .line 24
    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/util/KodularDynamicModel;->getId()I

    move-result v1

    if-ne v1, p0, :cond_0

    .line 25
    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/util/KodularDynamicModel;->getObject()Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getViewHolderById(ILjava/util/List;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/google/appinventor/components/runtime/util/KodularDynamicModel;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 32
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/appinventor/components/runtime/util/KodularDynamicModel;

    .line 33
    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/util/KodularDynamicModel;->getId()I

    move-result v1

    if-ne v1, p0, :cond_0

    .line 34
    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/util/KodularDynamicModel;->getViewHolder()Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static removeItemById(ILjava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/google/appinventor/components/runtime/util/KodularDynamicModel;",
            ">;)V"
        }
    .end annotation

    .line 50
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/appinventor/components/runtime/util/KodularDynamicModel;

    .line 51
    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/util/KodularDynamicModel;->getId()I

    move-result v2

    if-ne v2, p0, :cond_0

    .line 52
    invoke-interface {p1, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-void
.end method
