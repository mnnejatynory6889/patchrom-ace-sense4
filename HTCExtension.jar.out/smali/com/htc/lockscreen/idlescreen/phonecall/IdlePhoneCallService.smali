.class public abstract Lcom/htc/lockscreen/idlescreen/phonecall/IdlePhoneCallService;
.super Landroid/app/Service;
.source "IdlePhoneCallService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/lockscreen/idlescreen/phonecall/IdlePhoneCallService$IdlePhoneCallServiceWrapper;
    }
.end annotation


# static fields
.field public static final ACTION_PHONE_SERIVCE:Ljava/lang/String; = "com.htc.lockscreen.phone.service"

.field public static final ACTION_UPDATE_PHONE_STATE:Ljava/lang/String; = "com.htc.lockscreen.phone.update_phoneState"

.field public static final CODE_ANSWER:I = 0x1

.field public static final CODE_REJECT:I = 0x2

.field public static final CODE_SENDMSG:I = 0x4

.field public static final CODE_SILENT:I = 0x3

.field public static final KEY_CALL_ID:Ljava/lang/String; = "call_id"

.field public static final KEY_PACKAGE_NAME:Ljava/lang/String; = "packageName"

.field public static final KEY_PHONE_STATE:Ljava/lang/String; = "phoneState"

.field public static final KEY_RING:Ljava/lang/String; = "ringing"

.field public static final KEY_WITH_PHONESTATE:Ljava/lang/String; = "withPhoneState"


# instance fields
.field private final mPublicBinder:Landroid/os/IBinder;

.field private mUIHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 16
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 39
    new-instance v0, Lcom/htc/lockscreen/idlescreen/phonecall/IdlePhoneCallService$IdlePhoneCallServiceWrapper;

    invoke-direct {v0, p0}, Lcom/htc/lockscreen/idlescreen/phonecall/IdlePhoneCallService$IdlePhoneCallServiceWrapper;-><init>(Lcom/htc/lockscreen/idlescreen/phonecall/IdlePhoneCallService;)V

    iput-object v0, p0, Lcom/htc/lockscreen/idlescreen/phonecall/IdlePhoneCallService;->mPublicBinder:Landroid/os/IBinder;

    .line 40
    new-instance v0, Lcom/htc/lockscreen/idlescreen/phonecall/IdlePhoneCallService$1;

    invoke-direct {v0, p0}, Lcom/htc/lockscreen/idlescreen/phonecall/IdlePhoneCallService$1;-><init>(Lcom/htc/lockscreen/idlescreen/phonecall/IdlePhoneCallService;)V

    iput-object v0, p0, Lcom/htc/lockscreen/idlescreen/phonecall/IdlePhoneCallService;->mUIHandler:Landroid/os/Handler;

    .line 97
    return-void
.end method

.method public static endPhoneUI(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 150
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/htc/lockscreen/idlescreen/phonecall/IdlePhoneCallService;->endPhoneUI(Landroid/content/Context;I)V

    .line 151
    return-void
.end method

.method public static endPhoneUI(Landroid/content/Context;I)V
    .locals 4
    .parameter "context"
    .parameter "callId"

    .prologue
    .line 154
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.htc.lockscreen.phone.update_phoneState"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 155
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 156
    .local v1, packageName:Ljava/lang/String;
    const-string v2, "packageName"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 157
    const-string v2, "call_id"

    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 158
    const-string/jumbo v2, "withPhoneState"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 160
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 161
    return-void
.end method

.method public static startPhoneUI(Landroid/content/Context;Lcom/htc/lockscreen/telephony/PhoneState;)V
    .locals 0
    .parameter "context"
    .parameter "state"

    .prologue
    .line 132
    invoke-static {p0, p1}, Lcom/htc/lockscreen/idlescreen/phonecall/IdlePhoneCallService;->updatePhoneUI(Landroid/content/Context;Lcom/htc/lockscreen/telephony/PhoneState;)V

    .line 133
    return-void
.end method

.method public static updatePhoneUI(Landroid/content/Context;Lcom/htc/lockscreen/telephony/PhoneState;)V
    .locals 4
    .parameter "context"
    .parameter "state"

    .prologue
    .line 136
    if-nez p1, :cond_0

    .line 147
    :goto_0
    return-void

    .line 139
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.htc.lockscreen.phone.update_phoneState"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 140
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 141
    .local v1, packageName:Ljava/lang/String;
    const-string v2, "packageName"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 142
    const-string v2, "call_id"

    invoke-virtual {p1}, Lcom/htc/lockscreen/telephony/PhoneState;->getId()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 143
    const-string/jumbo v2, "withPhoneState"

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 145
    const-string v2, "phoneState"

    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 146
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0
.end method


# virtual methods
.method public abstract answerCall(I)V
.end method

.method public final onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .parameter "intent"

    .prologue
    .line 118
    iget-object v0, p0, Lcom/htc/lockscreen/idlescreen/phonecall/IdlePhoneCallService;->mPublicBinder:Landroid/os/IBinder;

    return-object v0
.end method

.method public onUnbind(Landroid/content/Intent;)Z
    .locals 1
    .parameter "intent"

    .prologue
    .line 127
    invoke-super {p0, p1}, Landroid/app/Service;->onUnbind(Landroid/content/Intent;)Z

    move-result v0

    return v0
.end method

.method public performPhoneAction(II)V
    .locals 2
    .parameter "code"
    .parameter "callId"

    .prologue
    .line 67
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 68
    .local v0, msg:Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->what:I

    .line 69
    iput p2, v0, Landroid/os/Message;->arg1:I

    .line 70
    iget-object v1, p0, Lcom/htc/lockscreen/idlescreen/phonecall/IdlePhoneCallService;->mUIHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 71
    return-void
.end method

.method public abstract rejectCall(I)V
.end method

.method public abstract sendMessage(I)V
.end method

.method public abstract silentCall(I)V
.end method
