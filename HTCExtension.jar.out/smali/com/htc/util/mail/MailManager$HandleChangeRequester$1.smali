.class Lcom/htc/util/mail/MailManager$HandleChangeRequester$1;
.super Ljava/lang/Object;
.source "MailManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/util/mail/MailManager$HandleChangeRequester;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/htc/util/mail/MailManager$HandleChangeRequester;


# direct methods
.method constructor <init>(Lcom/htc/util/mail/MailManager$HandleChangeRequester;)V
    .locals 0
    .parameter

    .prologue
    .line 845
    iput-object p1, p0, Lcom/htc/util/mail/MailManager$HandleChangeRequester$1;->this$1:Lcom/htc/util/mail/MailManager$HandleChangeRequester;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 847
    const-class v1, Lcom/htc/util/mail/MailManager$HandleChangeRequester;

    monitor-enter v1

    .line 848
    const/16 v0, 0xa

    :try_start_0
    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 849
    iget-object v0, p0, Lcom/htc/util/mail/MailManager$HandleChangeRequester$1;->this$1:Lcom/htc/util/mail/MailManager$HandleChangeRequester;

    iget-object v0, v0, Lcom/htc/util/mail/MailManager$HandleChangeRequester;->this$0:Lcom/htc/util/mail/MailManager;

    #calls: Lcom/htc/util/mail/MailManager;->doHandleMessageChange()V
    invoke-static {v0}, Lcom/htc/util/mail/MailManager;->access$100(Lcom/htc/util/mail/MailManager;)V

    .line 850
    iget-object v0, p0, Lcom/htc/util/mail/MailManager$HandleChangeRequester$1;->this$1:Lcom/htc/util/mail/MailManager$HandleChangeRequester;

    const/4 v2, 0x0

    #setter for: Lcom/htc/util/mail/MailManager$HandleChangeRequester;->isHandleMessageChangeInProcessing:Z
    invoke-static {v0, v2}, Lcom/htc/util/mail/MailManager$HandleChangeRequester;->access$202(Lcom/htc/util/mail/MailManager$HandleChangeRequester;Z)Z

    .line 851
    monitor-exit v1

    .line 852
    return-void

    .line 851
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
