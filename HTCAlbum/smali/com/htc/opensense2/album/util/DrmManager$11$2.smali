.class Lcom/htc/opensense2/album/util/DrmManager$11$2;
.super Ljava/lang/Object;
.source "DrmManager.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/opensense2/album/util/DrmManager$11;->update(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/opensense2/album/util/DrmManager$11;

.field final synthetic val$issuer:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/htc/opensense2/album/util/DrmManager$11;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/opensense2/album/util/DrmManager$11$2;->this$0:Lcom/htc/opensense2/album/util/DrmManager$11;

    iput-object p2, p0, Lcom/htc/opensense2/album/util/DrmManager$11$2;->val$issuer:Ljava/lang/String;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    iget-object v3, p0, Lcom/htc/opensense2/album/util/DrmManager$11$2;->val$issuer:Ljava/lang/String;

    const-string v4, "\\"

    const-string v5, "/"

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const/high16 v3, 0x1000

    invoke-virtual {v0, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v3, p0, Lcom/htc/opensense2/album/util/DrmManager$11$2;->this$0:Lcom/htc/opensense2/album/util/DrmManager$11;

    iget-object v3, v3, Lcom/htc/opensense2/album/util/DrmManager$11;->val$cx:Landroid/content/Context;

    invoke-virtual {v3, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
