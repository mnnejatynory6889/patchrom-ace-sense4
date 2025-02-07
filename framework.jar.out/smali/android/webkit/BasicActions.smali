.class Landroid/webkit/BasicActions;
.super Ljava/lang/Object;
.source "BasicActions.java"

# interfaces
.implements Lcom/htc/textselection/QuickActions;
.implements Landroid/webkit/WebView$WrapActions;


# static fields
.field private static final BUTTON_ID_COPY:I = 0x1020021

.field private static final BUTTON_ID_QUICKLOOKUP:I = 0x1

.field private static final BUTTON_ID_SELECTALL:I = 0x1020368

.field private static final BUTTON_ID_SHARE:I = 0x1020369

.field private static final BUTTON_ID_WEBSEARCH:I = 0x102036b

.field private static final G_DEFAULT:I = 0x1140000


# instance fields
.field copyButtonOnly:Z

.field focusedView:Landroid/view/View;

.field icon_copy:Landroid/graphics/drawable/Drawable;

.field icon_lookup:Landroid/graphics/drawable/Drawable;

.field icon_selectall:Landroid/graphics/drawable/Drawable;

.field icon_share:Landroid/graphics/drawable/Drawable;

.field icon_websearch:Landroid/graphics/drawable/Drawable;

.field mActionMenu:Landroid/view/Menu;

.field mActionMode:Landroid/view/ActionMode;

.field mWebView:Landroid/webkit/WebView;

.field menuCopy:Landroid/view/MenuItem;

.field menuQuikckLookup:Landroid/view/MenuItem;

.field private resLoaded:Z

.field showQuickLookup:Z

.field showWebSearch:Z

.field str_copy:Ljava/lang/String;

.field str_lookup:Ljava/lang/String;

.field str_selectall:Ljava/lang/String;

.field str_share:Ljava/lang/String;

.field str_websearch:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/webkit/WebView;)V
    .locals 1
    .parameter "wv"

    .prologue
    const/4 v0, 0x0

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput-boolean v0, p0, Landroid/webkit/BasicActions;->showQuickLookup:Z

    .line 58
    iput-boolean v0, p0, Landroid/webkit/BasicActions;->showWebSearch:Z

    .line 60
    iput-boolean v0, p0, Landroid/webkit/BasicActions;->copyButtonOnly:Z

    .line 61
    iput-boolean v0, p0, Landroid/webkit/BasicActions;->resLoaded:Z

    .line 64
    iput-object p1, p0, Landroid/webkit/BasicActions;->mWebView:Landroid/webkit/WebView;

    .line 65
    return-void
.end method

.method private handleItemAction(I)Z
    .locals 9
    .parameter "id"

    .prologue
    const/4 v8, 0x0

    .line 109
    const/4 v3, 0x1

    .line 110
    .local v3, ret:Z
    sparse-switch p1, :sswitch_data_0

    .line 163
    const/4 v3, 0x0

    .line 167
    :cond_0
    :goto_0
    return v3

    .line 112
    :sswitch_0
    iget-object v6, p0, Landroid/webkit/BasicActions;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v6}, Landroid/webkit/WebView;->copySelection()Z

    goto :goto_0

    .line 116
    :sswitch_1
    iget-object v6, p0, Landroid/webkit/BasicActions;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v6}, Landroid/webkit/WebView;->getSelection()Ljava/lang/String;

    move-result-object v5

    .line 117
    .local v5, selection:Ljava/lang/String;
    if-eqz v5, :cond_0

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_0

    .line 121
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    const/16 v7, 0x7d0

    if-le v6, v7, :cond_1

    .line 122
    iget-object v6, p0, Landroid/webkit/BasicActions;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v6}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v6

    const/high16 v7, 0x104

    invoke-static {v6, v7, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 126
    :cond_1
    iget-object v6, p0, Landroid/webkit/BasicActions;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v6}, Landroid/webkit/WebView;->getQuickSearch()Landroid/webkit/HTCQuickSearch;

    move-result-object v2

    .line 127
    .local v2, quickSearch:Landroid/webkit/HTCQuickSearch;
    if-eqz v2, :cond_0

    .line 128
    iget-object v6, p0, Landroid/webkit/BasicActions;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v6}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Landroid/webkit/HTCQuickSearch;->shareContent(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 134
    .end local v2           #quickSearch:Landroid/webkit/HTCQuickSearch;
    .end local v5           #selection:Ljava/lang/String;
    :sswitch_2
    iget-object v6, p0, Landroid/webkit/BasicActions;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v6}, Landroid/webkit/WebView;->getSelection()Ljava/lang/String;

    move-result-object v5

    .line 135
    .restart local v5       #selection:Ljava/lang/String;
    if-eqz v5, :cond_0

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_0

    .line 138
    new-instance v1, Landroid/content/Intent;

    const-string v6, "android.intent.action.WEB_SEARCH"

    invoke-direct {v1, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 139
    .local v1, i:Landroid/content/Intent;
    const/high16 v6, 0x1000

    invoke-virtual {v1, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 140
    const-string/jumbo v6, "new_search"

    const/4 v7, 0x1

    invoke-virtual {v1, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 141
    const-string/jumbo v6, "query"

    invoke-virtual {v1, v6, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 143
    :try_start_0
    iget-object v6, p0, Landroid/webkit/BasicActions;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v6}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 144
    :catch_0
    move-exception v0

    .line 145
    .local v0, e:Landroid/content/ActivityNotFoundException;
    const-string v6, "BasicActions"

    const-string v7, "ERROR!"

    invoke-static {v6, v7, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 146
    iget-object v6, p0, Landroid/webkit/BasicActions;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v6}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v6

    const v7, 0x10403b9

    invoke-static {v6, v7, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 154
    .end local v0           #e:Landroid/content/ActivityNotFoundException;
    .end local v1           #i:Landroid/content/Intent;
    .end local v5           #selection:Ljava/lang/String;
    :sswitch_3
    iget-object v6, p0, Landroid/webkit/BasicActions;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v6}, Landroid/webkit/WebView;->selectAll()V

    goto/16 :goto_0

    .line 158
    :sswitch_4
    iget-object v6, p0, Landroid/webkit/BasicActions;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v6}, Landroid/webkit/WebView;->getSelection()Ljava/lang/String;

    move-result-object v4

    .line 159
    .local v4, sel:Ljava/lang/String;
    iget-object v6, p0, Landroid/webkit/BasicActions;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v6, v4, v8}, Landroid/webkit/WebView;->showFindDialog(Ljava/lang/String;Z)Z

    goto/16 :goto_0

    .line 110
    :sswitch_data_0
    .sparse-switch
        0x1020021 -> :sswitch_0
        0x1020368 -> :sswitch_3
        0x1020369 -> :sswitch_1
        0x102036a -> :sswitch_4
        0x102036b -> :sswitch_2
    .end sparse-switch
.end method

.method private loadResource()V
    .locals 8

    .prologue
    .line 68
    iget-object v6, p0, Landroid/webkit/BasicActions;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v6}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 69
    .local v0, ctx:Landroid/content/Context;
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 71
    .local v4, res:Landroid/content/res/Resources;
    new-instance v2, Landroid/view/MenuInflater;

    invoke-direct {v2, v0}, Landroid/view/MenuInflater;-><init>(Landroid/content/Context;)V

    .line 72
    .local v2, menuInflater:Landroid/view/MenuInflater;
    new-instance v6, Lcom/android/internal/view/menu/MenuBuilder;

    invoke-direct {v6, v0}, Lcom/android/internal/view/menu/MenuBuilder;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Landroid/webkit/BasicActions;->mActionMenu:Landroid/view/Menu;

    .line 73
    const/high16 v6, 0x114

    iget-object v7, p0, Landroid/webkit/BasicActions;->mActionMenu:Landroid/view/Menu;

    invoke-virtual {v2, v6, v7}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 76
    const v6, 0x402000a

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    iput-object v6, p0, Landroid/webkit/BasicActions;->icon_copy:Landroid/graphics/drawable/Drawable;

    .line 77
    iget-object v6, p0, Landroid/webkit/BasicActions;->mActionMenu:Landroid/view/Menu;

    const v7, 0x1020021

    invoke-interface {v6, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v6

    invoke-interface {v6}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Landroid/webkit/BasicActions;->str_copy:Ljava/lang/String;

    .line 90
    const v6, 0x402001c

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    iput-object v6, p0, Landroid/webkit/BasicActions;->icon_share:Landroid/graphics/drawable/Drawable;

    .line 91
    iget-object v6, p0, Landroid/webkit/BasicActions;->mActionMenu:Landroid/view/Menu;

    const v7, 0x1020369

    invoke-interface {v6, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v6

    invoke-interface {v6}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Landroid/webkit/BasicActions;->str_share:Ljava/lang/String;

    .line 94
    new-instance v5, Landroid/content/Intent;

    const-string v6, "android.intent.action.WEB_SEARCH"

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 95
    .local v5, target:Landroid/content/Intent;
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 96
    .local v3, pm:Landroid/content/pm/PackageManager;
    const/high16 v6, 0x1

    invoke-virtual {v3, v5, v6}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    .line 97
    .local v1, mainActivitiesList:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_0

    .line 98
    const/4 v6, 0x1

    iput-boolean v6, p0, Landroid/webkit/BasicActions;->showWebSearch:Z

    .line 100
    :cond_0
    const v6, 0x4020018

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    iput-object v6, p0, Landroid/webkit/BasicActions;->icon_websearch:Landroid/graphics/drawable/Drawable;

    .line 101
    iget-object v6, p0, Landroid/webkit/BasicActions;->mActionMenu:Landroid/view/Menu;

    const v7, 0x102036b

    invoke-interface {v6, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v6

    invoke-interface {v6}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Landroid/webkit/BasicActions;->str_websearch:Ljava/lang/String;

    .line 104
    const v6, 0x402001b

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    iput-object v6, p0, Landroid/webkit/BasicActions;->icon_selectall:Landroid/graphics/drawable/Drawable;

    .line 105
    iget-object v6, p0, Landroid/webkit/BasicActions;->mActionMenu:Landroid/view/Menu;

    const v7, 0x1020368

    invoke-interface {v6, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v6

    invoke-interface {v6}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Landroid/webkit/BasicActions;->str_selectall:Ljava/lang/String;

    .line 106
    return-void
.end method


# virtual methods
.method public finish()V
    .locals 1

    .prologue
    .line 355
    iget-object v0, p0, Landroid/webkit/BasicActions;->mActionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_0

    .line 356
    iget-object v0, p0, Landroid/webkit/BasicActions;->mActionMode:Landroid/view/ActionMode;

    invoke-virtual {v0}, Landroid/view/ActionMode;->finish()V

    .line 358
    :cond_0
    return-void
.end method

.method public onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z
    .locals 3
    .parameter "mode"
    .parameter "item"

    .prologue
    .line 298
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 299
    .local v0, actionID:I
    invoke-direct {p0, v0}, Landroid/webkit/BasicActions;->handleItemAction(I)Z

    move-result v1

    .line 300
    .local v1, ret:Z
    const v2, 0x1020368

    if-eq v0, v2, :cond_0

    .line 301
    invoke-virtual {p1}, Landroid/view/ActionMode;->finish()V

    .line 303
    :cond_0
    return v1
.end method

.method public onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 8
    .parameter "mode"
    .parameter "menu"

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 172
    iget-boolean v4, p0, Landroid/webkit/BasicActions;->resLoaded:Z

    if-nez v4, :cond_0

    .line 173
    iput-boolean v5, p0, Landroid/webkit/BasicActions;->resLoaded:Z

    .line 174
    invoke-direct {p0}, Landroid/webkit/BasicActions;->loadResource()V

    .line 178
    :cond_0
    iget-object v4, p0, Landroid/webkit/BasicActions;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v4}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 196
    .local v1, ctx:Landroid/content/Context;
    :try_start_0
    invoke-virtual {p1}, Landroid/view/ActionMode;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v4

    const/high16 v7, 0x114

    invoke-virtual {v4, v7, p2}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 215
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v7, 0x1110031

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    .line 217
    .local v0, allowText:Z
    if-eqz v0, :cond_2

    const v4, 0x10403aa

    invoke-virtual {v1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    :goto_0
    invoke-virtual {p1, v4}, Landroid/view/ActionMode;->setTitle(Ljava/lang/CharSequence;)V

    .line 220
    invoke-virtual {p1}, Landroid/view/ActionMode;->isUiFocusable()Z

    move-result v4

    if-nez v4, :cond_1

    .line 226
    const v4, 0x102036a

    invoke-interface {p2, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    .line 227
    .local v3, findOnPageItem:Landroid/view/MenuItem;
    if-eqz v3, :cond_1

    .line 228
    invoke-interface {v3, v6}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 232
    .end local v3           #findOnPageItem:Landroid/view/MenuItem;
    :cond_1
    iput-object p1, p0, Landroid/webkit/BasicActions;->mActionMode:Landroid/view/ActionMode;

    move v4, v5

    .line 233
    .end local v0           #allowText:Z
    :goto_1
    return v4

    .line 209
    :catch_0
    move-exception v2

    .local v2, e:Ljava/lang/Exception;
    move v4, v6

    .line 210
    goto :goto_1

    .line 217
    .end local v2           #e:Ljava/lang/Exception;
    .restart local v0       #allowText:Z
    :cond_2
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public onCreateQuickActions(Lcom/htc/textselection/ActionMenu;)V
    .locals 4
    .parameter "actions"

    .prologue
    const/high16 v3, 0x114

    .line 362
    iget-boolean v0, p0, Landroid/webkit/BasicActions;->resLoaded:Z

    if-nez v0, :cond_0

    .line 363
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/webkit/BasicActions;->resLoaded:Z

    .line 364
    invoke-direct {p0}, Landroid/webkit/BasicActions;->loadResource()V

    .line 367
    :cond_0
    const v0, 0x1020368

    iget-object v1, p0, Landroid/webkit/BasicActions;->str_selectall:Ljava/lang/String;

    iget-object v2, p0, Landroid/webkit/BasicActions;->icon_selectall:Landroid/graphics/drawable/Drawable;

    invoke-interface {p1, v3, v0, v1, v2}, Lcom/htc/textselection/ActionMenu;->addAction(IILjava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)Lcom/htc/textselection/Action;

    .line 368
    const v0, 0x1020021

    iget-object v1, p0, Landroid/webkit/BasicActions;->str_copy:Ljava/lang/String;

    iget-object v2, p0, Landroid/webkit/BasicActions;->icon_copy:Landroid/graphics/drawable/Drawable;

    invoke-interface {p1, v3, v0, v1, v2}, Lcom/htc/textselection/ActionMenu;->addAction(IILjava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)Lcom/htc/textselection/Action;

    .line 370
    const v0, 0x102036b

    iget-object v1, p0, Landroid/webkit/BasicActions;->str_websearch:Ljava/lang/String;

    iget-object v2, p0, Landroid/webkit/BasicActions;->icon_websearch:Landroid/graphics/drawable/Drawable;

    invoke-interface {p1, v3, v0, v1, v2}, Lcom/htc/textselection/ActionMenu;->addAction(IILjava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)Lcom/htc/textselection/Action;

    .line 371
    const v0, 0x1020369

    iget-object v1, p0, Landroid/webkit/BasicActions;->str_share:Ljava/lang/String;

    iget-object v2, p0, Landroid/webkit/BasicActions;->icon_share:Landroid/graphics/drawable/Drawable;

    invoke-interface {p1, v3, v0, v1, v2}, Lcom/htc/textselection/ActionMenu;->addAction(IILjava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)Lcom/htc/textselection/Action;

    .line 372
    return-void
.end method

.method public onDestroyActionMode(Landroid/view/ActionMode;)V
    .locals 2
    .parameter "mode"

    .prologue
    const/4 v1, 0x0

    .line 342
    iget-object v0, p0, Landroid/webkit/BasicActions;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->selectionDone()V

    .line 343
    iput-object v1, p0, Landroid/webkit/BasicActions;->menuQuikckLookup:Landroid/view/MenuItem;

    .line 344
    iput-object v1, p0, Landroid/webkit/BasicActions;->menuCopy:Landroid/view/MenuItem;

    .line 345
    iput-object v1, p0, Landroid/webkit/BasicActions;->mActionMode:Landroid/view/ActionMode;

    .line 346
    return-void
.end method

.method public onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 9
    .parameter "mode"
    .parameter "menu"

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 274
    const v6, 0x1020021

    invoke-interface {p2, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 275
    .local v0, copyItem:Landroid/view/MenuItem;
    invoke-interface {p2}, Landroid/view/Menu;->size()I

    move-result v4

    .line 276
    .local v4, size:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v4, :cond_2

    .line 277
    invoke-interface {p2, v1}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v2

    .line 278
    .local v2, item:Landroid/view/MenuItem;
    iget-boolean v6, p0, Landroid/webkit/BasicActions;->copyButtonOnly:Z

    if-eqz v6, :cond_0

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    :cond_0
    move v6, v8

    :goto_1
    invoke-interface {v2, v6}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 276
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    move v6, v7

    .line 278
    goto :goto_1

    .line 281
    .end local v2           #item:Landroid/view/MenuItem;
    :cond_2
    const v6, 0x1020368

    invoke-interface {p2, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    .line 282
    .local v3, selectAll:Landroid/view/MenuItem;
    if-eqz v3, :cond_3

    .line 284
    invoke-interface {v3, v7}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 287
    :cond_3
    iget-boolean v6, p0, Landroid/webkit/BasicActions;->showWebSearch:Z

    if-nez v6, :cond_4

    .line 288
    const v6, 0x102036b

    invoke-interface {p2, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v5

    .line 289
    .local v5, webSearch:Landroid/view/MenuItem;
    if-eqz v5, :cond_4

    .line 290
    invoke-interface {v5, v7}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 293
    .end local v5           #webSearch:Landroid/view/MenuItem;
    :cond_4
    return v8
.end method

.method public onPrepareShowQuicActions(Lcom/htc/textselection/ActionMenu;)V
    .locals 5
    .parameter "actions"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const/high16 v2, 0x114

    .line 376
    iget-boolean v1, p0, Landroid/webkit/BasicActions;->copyButtonOnly:Z

    if-eqz v1, :cond_2

    .line 377
    invoke-interface {p1, v2, v3}, Lcom/htc/textselection/ActionMenu;->setGroupVisibility(IZ)V

    .line 378
    const v1, 0x1020021

    invoke-interface {p1, v2, v1}, Lcom/htc/textselection/ActionMenu;->getAction(II)Lcom/htc/textselection/Action;

    move-result-object v0

    .line 379
    .local v0, a:Lcom/htc/textselection/Action;
    if-eqz v0, :cond_0

    .line 380
    invoke-interface {v0, v4}, Lcom/htc/textselection/Action;->setVisible(Z)V

    .line 392
    .end local v0           #a:Lcom/htc/textselection/Action;
    :cond_0
    :goto_0
    iget-boolean v1, p0, Landroid/webkit/BasicActions;->showWebSearch:Z

    if-nez v1, :cond_1

    .line 393
    const v1, 0x102036b

    invoke-interface {p1, v2, v1}, Lcom/htc/textselection/ActionMenu;->getAction(II)Lcom/htc/textselection/Action;

    move-result-object v0

    .line 394
    .restart local v0       #a:Lcom/htc/textselection/Action;
    if-eqz v0, :cond_1

    .line 395
    invoke-interface {v0, v3}, Lcom/htc/textselection/Action;->setVisible(Z)V

    .line 397
    .end local v0           #a:Lcom/htc/textselection/Action;
    :cond_1
    return-void

    .line 383
    :cond_2
    invoke-interface {p1, v2, v4}, Lcom/htc/textselection/ActionMenu;->setGroupVisibility(IZ)V

    .line 385
    iget-object v1, p0, Landroid/webkit/BasicActions;->str_lookup:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 386
    invoke-interface {p1, v2, v4}, Lcom/htc/textselection/ActionMenu;->getAction(II)Lcom/htc/textselection/Action;

    move-result-object v0

    .line 387
    .restart local v0       #a:Lcom/htc/textselection/Action;
    if-eqz v0, :cond_0

    .line 388
    invoke-interface {v0, v3}, Lcom/htc/textselection/Action;->setVisible(Z)V

    goto :goto_0
.end method

.method public onQuickActionItemClicked(I)V
    .locals 1
    .parameter "actionID"

    .prologue
    .line 401
    invoke-direct {p0, p1}, Landroid/webkit/BasicActions;->handleItemAction(I)Z

    .line 402
    const v0, 0x1020368

    if-eq p1, v0, :cond_0

    .line 403
    iget-object v0, p0, Landroid/webkit/BasicActions;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->selectionDone()V

    .line 404
    :cond_0
    return-void
.end method
