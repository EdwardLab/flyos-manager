.class final Lcom/google/appinventor/components/runtime/PhoneCall$a;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/appinventor/components/runtime/PhoneCall;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field private ZX8R20flhr3CVS4Kl4ZKKDInmXhpC5acCzOjP50MC4PLZvr5DSKJA1uCSNI4PeI:I

.field private synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/PhoneCall;

.field private ik13O8j78hPb27XeipAJHUcJmdHxYMJFw4gYbTGvLKIOs7SX1F7x61gocQ17TlNc:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/PhoneCall;)V
    .locals 0

    .line 269
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/PhoneCall$a;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/PhoneCall;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    const/4 p1, 0x0

    .line 270
    iput p1, p0, Lcom/google/appinventor/components/runtime/PhoneCall$a;->ZX8R20flhr3CVS4Kl4ZKKDInmXhpC5acCzOjP50MC4PLZvr5DSKJA1uCSNI4PeI:I

    const-string p1, ""

    .line 271
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/PhoneCall$a;->ik13O8j78hPb27XeipAJHUcJmdHxYMJFw4gYbTGvLKIOs7SX1F7x61gocQ17TlNc:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 276
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.intent.action.PHONE_STATE"

    .line 277
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const-string p1, "state"

    .line 278
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 279
    sget-object v0, Landroid/telephony/TelephonyManager;->EXTRA_STATE_RINGING:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 281
    sget p1, Lcom/google/appinventor/components/runtime/PhoneCall$b;->K7dcZ0wsgklhxIEZ56TEizrYoocHIkvglPQDsEhhjdemR7bSblNU8EAyc3To8SV0:I

    iput p1, p0, Lcom/google/appinventor/components/runtime/PhoneCall$a;->ZX8R20flhr3CVS4Kl4ZKKDInmXhpC5acCzOjP50MC4PLZvr5DSKJA1uCSNI4PeI:I

    const-string p1, "incoming_number"

    .line 282
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/PhoneCall$a;->ik13O8j78hPb27XeipAJHUcJmdHxYMJFw4gYbTGvLKIOs7SX1F7x61gocQ17TlNc:Ljava/lang/String;

    if-nez p1, :cond_0

    return-void

    .line 288
    :cond_0
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/PhoneCall$a;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/PhoneCall;

    sget-object p2, Lcom/google/appinventor/components/common/StartedStatus;->Incoming:Lcom/google/appinventor/components/common/StartedStatus;

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/PhoneCall$a;->ik13O8j78hPb27XeipAJHUcJmdHxYMJFw4gYbTGvLKIOs7SX1F7x61gocQ17TlNc:Ljava/lang/String;

    invoke-virtual {p1, p2, v0}, Lcom/google/appinventor/components/runtime/PhoneCall;->PhoneCallStartedAbstract(Lcom/google/appinventor/components/common/StartedStatus;Ljava/lang/String;)V

    return-void

    .line 289
    :cond_1
    sget-object p2, Landroid/telephony/TelephonyManager;->EXTRA_STATE_OFFHOOK:Ljava/lang/String;

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 290
    iget p1, p0, Lcom/google/appinventor/components/runtime/PhoneCall$a;->ZX8R20flhr3CVS4Kl4ZKKDInmXhpC5acCzOjP50MC4PLZvr5DSKJA1uCSNI4PeI:I

    sget p2, Lcom/google/appinventor/components/runtime/PhoneCall$b;->K7dcZ0wsgklhxIEZ56TEizrYoocHIkvglPQDsEhhjdemR7bSblNU8EAyc3To8SV0:I

    if-ne p1, p2, :cond_6

    .line 291
    sget p1, Lcom/google/appinventor/components/runtime/PhoneCall$b;->hYIBeJsINiSNmMMYMsE9k7k9FKwSRXABLbxSyf9mDVDqNrjjNU51ZRtstLVyAr2s:I

    iput p1, p0, Lcom/google/appinventor/components/runtime/PhoneCall$a;->ZX8R20flhr3CVS4Kl4ZKKDInmXhpC5acCzOjP50MC4PLZvr5DSKJA1uCSNI4PeI:I

    .line 292
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/PhoneCall$a;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/PhoneCall;

    iget-object p2, p0, Lcom/google/appinventor/components/runtime/PhoneCall$a;->ik13O8j78hPb27XeipAJHUcJmdHxYMJFw4gYbTGvLKIOs7SX1F7x61gocQ17TlNc:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/google/appinventor/components/runtime/PhoneCall;->IncomingCallAnswered(Ljava/lang/String;)V

    return-void

    .line 294
    :cond_2
    sget-object p2, Landroid/telephony/TelephonyManager;->EXTRA_STATE_IDLE:Ljava/lang/String;

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 295
    iget p1, p0, Lcom/google/appinventor/components/runtime/PhoneCall$a;->ZX8R20flhr3CVS4Kl4ZKKDInmXhpC5acCzOjP50MC4PLZvr5DSKJA1uCSNI4PeI:I

    sget p2, Lcom/google/appinventor/components/runtime/PhoneCall$b;->K7dcZ0wsgklhxIEZ56TEizrYoocHIkvglPQDsEhhjdemR7bSblNU8EAyc3To8SV0:I

    if-ne p1, p2, :cond_3

    .line 296
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/PhoneCall$a;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/PhoneCall;

    sget-object p2, Lcom/google/appinventor/components/common/EndedStatus;->IncomingRejected:Lcom/google/appinventor/components/common/EndedStatus;

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/PhoneCall$a;->ik13O8j78hPb27XeipAJHUcJmdHxYMJFw4gYbTGvLKIOs7SX1F7x61gocQ17TlNc:Ljava/lang/String;

    invoke-virtual {p1, p2, v0}, Lcom/google/appinventor/components/runtime/PhoneCall;->PhoneCallEndedAbstract(Lcom/google/appinventor/components/common/EndedStatus;Ljava/lang/String;)V

    goto :goto_0

    .line 297
    :cond_3
    iget p1, p0, Lcom/google/appinventor/components/runtime/PhoneCall$a;->ZX8R20flhr3CVS4Kl4ZKKDInmXhpC5acCzOjP50MC4PLZvr5DSKJA1uCSNI4PeI:I

    sget p2, Lcom/google/appinventor/components/runtime/PhoneCall$b;->hYIBeJsINiSNmMMYMsE9k7k9FKwSRXABLbxSyf9mDVDqNrjjNU51ZRtstLVyAr2s:I

    if-ne p1, p2, :cond_4

    .line 298
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/PhoneCall$a;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/PhoneCall;

    sget-object p2, Lcom/google/appinventor/components/common/EndedStatus;->IncomingEnded:Lcom/google/appinventor/components/common/EndedStatus;

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/PhoneCall$a;->ik13O8j78hPb27XeipAJHUcJmdHxYMJFw4gYbTGvLKIOs7SX1F7x61gocQ17TlNc:Ljava/lang/String;

    invoke-virtual {p1, p2, v0}, Lcom/google/appinventor/components/runtime/PhoneCall;->PhoneCallEndedAbstract(Lcom/google/appinventor/components/common/EndedStatus;Ljava/lang/String;)V

    goto :goto_0

    .line 299
    :cond_4
    iget p1, p0, Lcom/google/appinventor/components/runtime/PhoneCall$a;->ZX8R20flhr3CVS4Kl4ZKKDInmXhpC5acCzOjP50MC4PLZvr5DSKJA1uCSNI4PeI:I

    sget p2, Lcom/google/appinventor/components/runtime/PhoneCall$b;->wfbsnc19ruRPyBpriU11i0zXW81wrBgGRVM2BOD65kRILLKDr3mBxnYSQKLd5kkO:I

    if-ne p1, p2, :cond_5

    .line 300
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/PhoneCall$a;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/PhoneCall;

    sget-object p2, Lcom/google/appinventor/components/common/EndedStatus;->OutgoingEnded:Lcom/google/appinventor/components/common/EndedStatus;

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/PhoneCall$a;->ik13O8j78hPb27XeipAJHUcJmdHxYMJFw4gYbTGvLKIOs7SX1F7x61gocQ17TlNc:Ljava/lang/String;

    invoke-virtual {p1, p2, v0}, Lcom/google/appinventor/components/runtime/PhoneCall;->PhoneCallEndedAbstract(Lcom/google/appinventor/components/common/EndedStatus;Ljava/lang/String;)V

    :cond_5
    :goto_0
    const/4 p1, 0x0

    .line 302
    iput p1, p0, Lcom/google/appinventor/components/runtime/PhoneCall$a;->ZX8R20flhr3CVS4Kl4ZKKDInmXhpC5acCzOjP50MC4PLZvr5DSKJA1uCSNI4PeI:I

    const-string p1, ""

    .line 303
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/PhoneCall$a;->ik13O8j78hPb27XeipAJHUcJmdHxYMJFw4gYbTGvLKIOs7SX1F7x61gocQ17TlNc:Ljava/lang/String;

    :cond_6
    return-void

    :cond_7
    const-string v0, "android.intent.action.NEW_OUTGOING_CALL"

    .line 305
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_8

    .line 306
    sget p1, Lcom/google/appinventor/components/runtime/PhoneCall$b;->wfbsnc19ruRPyBpriU11i0zXW81wrBgGRVM2BOD65kRILLKDr3mBxnYSQKLd5kkO:I

    iput p1, p0, Lcom/google/appinventor/components/runtime/PhoneCall$a;->ZX8R20flhr3CVS4Kl4ZKKDInmXhpC5acCzOjP50MC4PLZvr5DSKJA1uCSNI4PeI:I

    const-string p1, "android.intent.extra.PHONE_NUMBER"

    .line 307
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/PhoneCall$a;->ik13O8j78hPb27XeipAJHUcJmdHxYMJFw4gYbTGvLKIOs7SX1F7x61gocQ17TlNc:Ljava/lang/String;

    .line 308
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/PhoneCall$a;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/PhoneCall;

    sget-object p2, Lcom/google/appinventor/components/common/StartedStatus;->Outgoing:Lcom/google/appinventor/components/common/StartedStatus;

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/PhoneCall$a;->ik13O8j78hPb27XeipAJHUcJmdHxYMJFw4gYbTGvLKIOs7SX1F7x61gocQ17TlNc:Ljava/lang/String;

    invoke-virtual {p1, p2, v0}, Lcom/google/appinventor/components/runtime/PhoneCall;->PhoneCallStartedAbstract(Lcom/google/appinventor/components/common/StartedStatus;Ljava/lang/String;)V

    :cond_8
    return-void
.end method
