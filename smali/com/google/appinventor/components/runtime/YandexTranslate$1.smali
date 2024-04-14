.class final Lcom/google/appinventor/components/runtime/YandexTranslate$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/YandexTranslate;->RequestTranslation(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic ArOjKO7pqAIWG8ZZlv3YBxnAZj1pb9t33KRX1FDn1YZBKlUfegr0dDdXoq3tBTrf:Ljava/lang/String;

.field private synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/YandexTranslate;

.field private synthetic yBWgr1TFnOTkj12JSinX7tDktLYDdE0hbjWh6SJ840mGKDqolkYZlpsg76XJs9ig:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/YandexTranslate;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 92
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/YandexTranslate$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/YandexTranslate;

    iput-object p2, p0, Lcom/google/appinventor/components/runtime/YandexTranslate$1;->yBWgr1TFnOTkj12JSinX7tDktLYDdE0hbjWh6SJ840mGKDqolkYZlpsg76XJs9ig:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/appinventor/components/runtime/YandexTranslate$1;->ArOjKO7pqAIWG8ZZlv3YBxnAZj1pb9t33KRX1FDn1YZBKlUfegr0dDdXoq3tBTrf:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    const-string v0, "RequestTranslation"

    const/4 v1, 0x0

    .line 96
    :try_start_0
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/YandexTranslate$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/YandexTranslate;

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/YandexTranslate$1;->yBWgr1TFnOTkj12JSinX7tDktLYDdE0hbjWh6SJ840mGKDqolkYZlpsg76XJs9ig:Ljava/lang/String;

    iget-object v4, p0, Lcom/google/appinventor/components/runtime/YandexTranslate$1;->ArOjKO7pqAIWG8ZZlv3YBxnAZj1pb9t33KRX1FDn1YZBKlUfegr0dDdXoq3tBTrf:Ljava/lang/String;

    invoke-static {v2, v3, v4}, Lcom/google/appinventor/components/runtime/YandexTranslate;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/YandexTranslate;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 101
    :catch_0
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/YandexTranslate$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/YandexTranslate;

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/YandexTranslate;->form:Lcom/google/appinventor/components/runtime/Form;

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/YandexTranslate$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/YandexTranslate;

    const/16 v4, 0x89a

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v2, v3, v0, v4, v1}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    return-void

    .line 98
    :catch_1
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/YandexTranslate$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/YandexTranslate;

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/YandexTranslate;->form:Lcom/google/appinventor/components/runtime/Form;

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/YandexTranslate$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/YandexTranslate;

    const/16 v4, 0x89b

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v2, v3, v0, v4, v1}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    return-void
.end method
