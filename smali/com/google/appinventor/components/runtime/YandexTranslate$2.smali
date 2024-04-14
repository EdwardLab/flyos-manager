.class final Lcom/google/appinventor/components/runtime/YandexTranslate$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/appinventor/components/runtime/YandexTranslate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic SOcHIyDQIvBEoO60i96YNU6xXO9daDM3Vqs4QxvYjxPTRo7vL8265rTCHGsT8wn:Ljava/lang/String;

.field private synthetic XV6G7bOb5wiRxecCocfr6qvbVZW2PRr6QFLPhr4XVxqssO63KRha91piTv1fKs9l:Ljava/lang/String;

.field private synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/YandexTranslate;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/YandexTranslate;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 139
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/YandexTranslate$2;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/YandexTranslate;

    iput-object p2, p0, Lcom/google/appinventor/components/runtime/YandexTranslate$2;->XV6G7bOb5wiRxecCocfr6qvbVZW2PRr6QFLPhr4XVxqssO63KRha91piTv1fKs9l:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/appinventor/components/runtime/YandexTranslate$2;->SOcHIyDQIvBEoO60i96YNU6xXO9daDM3Vqs4QxvYjxPTRo7vL8265rTCHGsT8wn:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 142
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/YandexTranslate$2;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/YandexTranslate;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/YandexTranslate$2;->XV6G7bOb5wiRxecCocfr6qvbVZW2PRr6QFLPhr4XVxqssO63KRha91piTv1fKs9l:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/YandexTranslate$2;->SOcHIyDQIvBEoO60i96YNU6xXO9daDM3Vqs4QxvYjxPTRo7vL8265rTCHGsT8wn:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/appinventor/components/runtime/YandexTranslate;->GotTranslation(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
