.class Lcom/htc/widget/QuickContactBadge$QueryHandler;
.super Landroid/content/AsyncQueryHandler;
.source "QuickContactBadge.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/widget/QuickContactBadge;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "QueryHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/widget/QuickContactBadge;


# direct methods
.method public constructor <init>(Lcom/htc/widget/QuickContactBadge;Landroid/content/ContentResolver;)V
    .locals 0
    .parameter
    .parameter "cr"

    .prologue
    .line 884
    iput-object p1, p0, Lcom/htc/widget/QuickContactBadge$QueryHandler;->this$0:Lcom/htc/widget/QuickContactBadge;

    .line 885
    invoke-direct {p0, p2}, Landroid/content/AsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    .line 886
    return-void
.end method


# virtual methods
.method protected onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 10
    .parameter "token"
    .parameter "cookie"
    .parameter "cursor"

    .prologue
    .line 894
    const/4 v5, 0x0

    .line 895
    .local v5, lookupUri:Landroid/net/Uri;
    const/4 v2, 0x0

    .line 896
    .local v2, createUri:Landroid/net/Uri;
    const/4 v6, 0x0

    .line 899
    .local v6, trigger:Z
    packed-switch p1, :pswitch_data_0

    .line 944
    .end local p2
    :cond_0
    :goto_0
    if-eqz p3, :cond_1

    .line 945
    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    .line 949
    :cond_1
    iget-object v7, p0, Lcom/htc/widget/QuickContactBadge$QueryHandler;->this$0:Lcom/htc/widget/QuickContactBadge;

    #setter for: Lcom/htc/widget/QuickContactBadge;->mContactUri:Landroid/net/Uri;
    invoke-static {v7, v5}, Lcom/htc/widget/QuickContactBadge;->access$002(Lcom/htc/widget/QuickContactBadge;Landroid/net/Uri;)Landroid/net/Uri;

    .line 950
    iget-object v7, p0, Lcom/htc/widget/QuickContactBadge$QueryHandler;->this$0:Lcom/htc/widget/QuickContactBadge;

    #calls: Lcom/htc/widget/QuickContactBadge;->onContactUriChanged()V
    invoke-static {v7}, Lcom/htc/widget/QuickContactBadge;->access$100(Lcom/htc/widget/QuickContactBadge;)V

    .line 952
    if-eqz v6, :cond_4

    if-eqz v5, :cond_4

    .line 954
    iget-object v7, p0, Lcom/htc/widget/QuickContactBadge$QueryHandler;->this$0:Lcom/htc/widget/QuickContactBadge;

    #calls: Lcom/htc/widget/QuickContactBadge;->trigger(Landroid/net/Uri;)V
    invoke-static {v7, v5}, Lcom/htc/widget/QuickContactBadge;->access$200(Lcom/htc/widget/QuickContactBadge;Landroid/net/Uri;)V

    .line 971
    :cond_2
    :goto_1
    return-void

    .line 901
    .restart local p2
    :pswitch_0
    const/4 v6, 0x1

    .line 902
    :try_start_0
    const-string v7, "tel"

    check-cast p2, Ljava/lang/String;

    .end local p2
    const/4 v8, 0x0

    invoke-static {v7, p2, v8}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 906
    :pswitch_1
    if-eqz p3, :cond_0

    invoke-interface {p3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 907
    const/4 v7, 0x0

    invoke-interface {p3, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    .line 908
    .local v0, contactId:J
    const/4 v7, 0x1

    invoke-interface {p3, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 910
    .local v4, lookupKey:Ljava/lang/String;
    invoke-static {v0, v1, v4}, Landroid/provider/ContactsContract$Contacts;->getLookupUri(JLjava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    .line 911
    goto :goto_0

    .line 916
    .end local v0           #contactId:J
    .end local v4           #lookupKey:Ljava/lang/String;
    .restart local p2
    :pswitch_2
    const/4 v6, 0x1

    .line 917
    const-string v7, "mailto"

    check-cast p2, Ljava/lang/String;

    .end local p2
    const/4 v8, 0x0

    invoke-static {v7, p2, v8}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 921
    :pswitch_3
    if-eqz p3, :cond_0

    invoke-interface {p3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 922
    const/4 v7, 0x0

    invoke-interface {p3, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    .line 923
    .restart local v0       #contactId:J
    const/4 v7, 0x1

    invoke-interface {p3, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 925
    .restart local v4       #lookupKey:Ljava/lang/String;
    invoke-static {v0, v1, v4}, Landroid/provider/ContactsContract$Contacts;->getLookupUri(JLjava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    .line 926
    goto :goto_0

    .line 931
    .end local v0           #contactId:J
    .end local v4           #lookupKey:Ljava/lang/String;
    .restart local p2
    :pswitch_4
    if-eqz p3, :cond_0

    invoke-interface {p3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 932
    const/4 v7, 0x0

    invoke-interface {p3, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    .line 934
    .restart local v0       #contactId:J
    const/4 v7, 0x1

    invoke-interface {p3, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 936
    .restart local v4       #lookupKey:Ljava/lang/String;
    invoke-static {v0, v1, v4}, Landroid/provider/ContactsContract$Contacts;->getLookupUri(JLjava/lang/String;)Landroid/net/Uri;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v5

    .line 937
    const/4 v6, 0x1

    goto :goto_0

    .line 944
    .end local v0           #contactId:J
    .end local v4           #lookupKey:Ljava/lang/String;
    .end local p2
    :catchall_0
    move-exception v7

    if-eqz p3, :cond_3

    .line 945
    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v7

    .line 955
    :cond_4
    if-eqz v2, :cond_7

    .line 958
    sget-object v7, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_Sense_Version:Ljava/lang/String;

    const-string v8, "1.0"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_5

    sget-object v7, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_Sense_Version:Ljava/lang/String;

    const-string v8, "1.5"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_5

    sget-object v7, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_Sense_Version:Ljava/lang/String;

    const-string v8, "1.6"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 961
    :cond_5
    new-instance v3, Landroid/content/Intent;

    const-string v7, "com.android.contacts.action.SHOW_OR_CREATE_CONTACT"

    invoke-direct {v3, v7, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 963
    .local v3, intent:Landroid/content/Intent;
    iget-object v7, p0, Lcom/htc/widget/QuickContactBadge$QueryHandler;->this$0:Lcom/htc/widget/QuickContactBadge;

    invoke-virtual {v7}, Lcom/htc/widget/QuickContactBadge;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 965
    .end local v3           #intent:Landroid/content/Intent;
    :cond_6
    iget-object v7, p0, Lcom/htc/widget/QuickContactBadge$QueryHandler;->this$0:Lcom/htc/widget/QuickContactBadge;

    iget-object v8, p0, Lcom/htc/widget/QuickContactBadge$QueryHandler;->this$0:Lcom/htc/widget/QuickContactBadge;

    #getter for: Lcom/htc/widget/QuickContactBadge;->mContactEmail:Ljava/lang/String;
    invoke-static {v8}, Lcom/htc/widget/QuickContactBadge;->access$300(Lcom/htc/widget/QuickContactBadge;)Ljava/lang/String;

    move-result-object v8

    iget-object v9, p0, Lcom/htc/widget/QuickContactBadge$QueryHandler;->this$0:Lcom/htc/widget/QuickContactBadge;

    #getter for: Lcom/htc/widget/QuickContactBadge;->mContactPhone:Ljava/lang/String;
    invoke-static {v9}, Lcom/htc/widget/QuickContactBadge;->access$400(Lcom/htc/widget/QuickContactBadge;)Ljava/lang/String;

    move-result-object v9

    #calls: Lcom/htc/widget/QuickContactBadge;->trigger(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v7, v5, v8, v9}, Lcom/htc/widget/QuickContactBadge;->access$500(Lcom/htc/widget/QuickContactBadge;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 968
    :cond_7
    iget-object v7, p0, Lcom/htc/widget/QuickContactBadge$QueryHandler;->this$0:Lcom/htc/widget/QuickContactBadge;

    #getter for: Lcom/htc/widget/QuickContactBadge;->mCallback:Lcom/htc/widget/QuickContactBadge$QueryCallback;
    invoke-static {v7}, Lcom/htc/widget/QuickContactBadge;->access$600(Lcom/htc/widget/QuickContactBadge;)Lcom/htc/widget/QuickContactBadge$QueryCallback;

    move-result-object v7

    if-eqz v7, :cond_2

    .line 969
    iget-object v7, p0, Lcom/htc/widget/QuickContactBadge$QueryHandler;->this$0:Lcom/htc/widget/QuickContactBadge;

    #getter for: Lcom/htc/widget/QuickContactBadge;->mCallback:Lcom/htc/widget/QuickContactBadge$QueryCallback;
    invoke-static {v7}, Lcom/htc/widget/QuickContactBadge;->access$600(Lcom/htc/widget/QuickContactBadge;)Lcom/htc/widget/QuickContactBadge$QueryCallback;

    move-result-object v7

    invoke-interface {v7}, Lcom/htc/widget/QuickContactBadge$QueryCallback;->onQueryNothing()V

    goto/16 :goto_1

    .line 899
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method
