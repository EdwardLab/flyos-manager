.class final Lcom/google/appinventor/components/runtime/PhoneCall$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/appinventor/components/runtime/PermissionResultHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/PhoneCall;->MakePhoneCallDirect()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/PhoneCall;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/PhoneCall;)V
    .locals 0

    .line 148
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/PhoneCall$2;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/PhoneCall;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final HandlePermissionResponse(Ljava/lang/String;Z)V
    .locals 2

    if-eqz p2, :cond_0

    .line 152
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/PhoneCall$2;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/PhoneCall;

    invoke-static {p1}, Lcom/google/appinventor/components/runtime/PhoneCall;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/PhoneCall;)Z

    .line 153
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/PhoneCall$2;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/PhoneCall;

    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/PhoneCall;->MakePhoneCall()V

    return-void

    .line 155
    :cond_0
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/PhoneCall$2;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/PhoneCall;

    iget-object p1, p1, Lcom/google/appinventor/components/runtime/PhoneCall;->form:Lcom/google/appinventor/components/runtime/Form;

    iget-object p2, p0, Lcom/google/appinventor/components/runtime/PhoneCall$2;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/PhoneCall;

    const-string v0, "MakePhoneCall"

    const-string v1, "android.permission.CALL_PHONE"

    invoke-virtual {p1, p2, v0, v1}, Lcom/google/appinventor/components/runtime/Form;->dispatchPermissionDeniedEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
