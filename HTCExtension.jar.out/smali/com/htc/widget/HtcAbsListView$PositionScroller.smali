.class Lcom/htc/widget/HtcAbsListView$PositionScroller;
.super Ljava/lang/Object;
.source "HtcAbsListView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/widget/HtcAbsListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PositionScroller"
.end annotation


# static fields
.field private static final MOVE_DOWN_BOUND:I = 0x3

.field private static final MOVE_DOWN_POS:I = 0x1

.field private static final MOVE_OFFSET:I = 0x5

.field private static final MOVE_UP_BOUND:I = 0x4

.field private static final MOVE_UP_POS:I = 0x2

.field private static final SCROLL_DURATION:I = 0x190


# instance fields
.field private mBoundPos:I

.field private final mExtraScroll:I

.field private mLastSeenPos:I

.field private mMode:I

.field private mOffsetFromTop:I

.field private mScrollDuration:I

.field private mTargetPos:I

.field final synthetic this$0:Lcom/htc/widget/HtcAbsListView;


# direct methods
.method constructor <init>(Lcom/htc/widget/HtcAbsListView;)V
    .locals 1
    .parameter

    .prologue
    .line 4498
    iput-object p1, p0, Lcom/htc/widget/HtcAbsListView$PositionScroller;->this$0:Lcom/htc/widget/HtcAbsListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4499
    #getter for: Lcom/htc/widget/HtcAbsListView;->mContext:Landroid/content/Context;
    invoke-static {p1}, Lcom/htc/widget/HtcAbsListView;->access$3000(Lcom/htc/widget/HtcAbsListView;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledFadingEdgeLength()I

    move-result v0

    iput v0, p0, Lcom/htc/widget/HtcAbsListView$PositionScroller;->mExtraScroll:I

    .line 4500
    return-void
.end method


# virtual methods
.method public run()V
    .locals 31

    .prologue
    .line 4640
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcAbsListView$PositionScroller;->this$0:Lcom/htc/widget/HtcAbsListView;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget v0, v0, Lcom/htc/widget/HtcAbsListView;->mTouchMode:I

    move/from16 v27, v0

    const/16 v28, 0x4

    move/from16 v0, v27

    move/from16 v1, v28

    if-eq v0, v1, :cond_1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAbsListView$PositionScroller;->mLastSeenPos:I

    move/from16 v27, v0

    const/16 v28, -0x1

    move/from16 v0, v27

    move/from16 v1, v28

    if-eq v0, v1, :cond_1

    .line 4811
    :cond_0
    :goto_0
    return-void

    .line 4644
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcAbsListView$PositionScroller;->this$0:Lcom/htc/widget/HtcAbsListView;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/htc/widget/HtcAbsListView;->getHeight()I

    move-result v16

    .line 4645
    .local v16, listHeight:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcAbsListView$PositionScroller;->this$0:Lcom/htc/widget/HtcAbsListView;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget v6, v0, Lcom/htc/widget/HtcAbsListView;->mFirstPosition:I

    .line 4647
    .local v6, firstPos:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAbsListView$PositionScroller;->mMode:I

    move/from16 v27, v0

    packed-switch v27, :pswitch_data_0

    goto :goto_0

    .line 4649
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcAbsListView$PositionScroller;->this$0:Lcom/htc/widget/HtcAbsListView;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/htc/widget/HtcAbsListView;->getChildCount()I

    move-result v27

    add-int/lit8 v13, v27, -0x1

    .line 4650
    .local v13, lastViewIndex:I
    add-int v9, v6, v13

    .line 4652
    .local v9, lastPos:I
    if-ltz v13, :cond_0

    .line 4656
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAbsListView$PositionScroller;->mLastSeenPos:I

    move/from16 v27, v0

    move/from16 v0, v27

    if-ne v9, v0, :cond_2

    .line 4658
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcAbsListView$PositionScroller;->this$0:Lcom/htc/widget/HtcAbsListView;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAbsListView;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 4662
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcAbsListView$PositionScroller;->this$0:Lcom/htc/widget/HtcAbsListView;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    invoke-virtual {v0, v13}, Lcom/htc/widget/HtcAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    .line 4663
    .local v10, lastView:Landroid/view/View;
    invoke-virtual {v10}, Landroid/view/View;->getHeight()I

    move-result v12

    .line 4664
    .local v12, lastViewHeight:I
    invoke-virtual {v10}, Landroid/view/View;->getTop()I

    move-result v15

    .line 4665
    .local v15, lastViewTop:I
    sub-int v14, v16, v15

    .line 4666
    .local v14, lastViewPixelsShowing:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcAbsListView$PositionScroller;->this$0:Lcom/htc/widget/HtcAbsListView;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget v0, v0, Lcom/htc/widget/HtcAbsListView;->mItemCount:I

    move/from16 v27, v0

    add-int/lit8 v27, v27, -0x1

    move/from16 v0, v27

    if-ge v9, v0, :cond_3

    move-object/from16 v0, p0

    iget v5, v0, Lcom/htc/widget/HtcAbsListView$PositionScroller;->mExtraScroll:I

    .line 4668
    .local v5, extraScroll:I
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcAbsListView$PositionScroller;->this$0:Lcom/htc/widget/HtcAbsListView;

    move-object/from16 v27, v0

    sub-int v28, v12, v14

    add-int v28, v28, v5

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAbsListView$PositionScroller;->mScrollDuration:I

    move/from16 v29, v0

    invoke-virtual/range {v27 .. v29}, Lcom/htc/widget/HtcAbsListView;->smoothScrollBy(II)V

    .line 4671
    move-object/from16 v0, p0

    iput v9, v0, Lcom/htc/widget/HtcAbsListView$PositionScroller;->mLastSeenPos:I

    .line 4672
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAbsListView$PositionScroller;->mTargetPos:I

    move/from16 v27, v0

    move/from16 v0, v27

    if-ge v9, v0, :cond_0

    .line 4673
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcAbsListView$PositionScroller;->this$0:Lcom/htc/widget/HtcAbsListView;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAbsListView;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0

    .line 4666
    .end local v5           #extraScroll:I
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcAbsListView$PositionScroller;->this$0:Lcom/htc/widget/HtcAbsListView;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/htc/widget/HtcAbsListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget v5, v0, Landroid/graphics/Rect;->bottom:I

    goto :goto_1

    .line 4679
    .end local v9           #lastPos:I
    .end local v10           #lastView:Landroid/view/View;
    .end local v12           #lastViewHeight:I
    .end local v13           #lastViewIndex:I
    .end local v14           #lastViewPixelsShowing:I
    .end local v15           #lastViewTop:I
    :pswitch_1
    const/16 v21, 0x1

    .line 4680
    .local v21, nextViewIndex:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcAbsListView$PositionScroller;->this$0:Lcom/htc/widget/HtcAbsListView;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/htc/widget/HtcAbsListView;->getChildCount()I

    move-result v3

    .line 4682
    .local v3, childCount:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAbsListView$PositionScroller;->mBoundPos:I

    move/from16 v27, v0

    move/from16 v0, v27

    if-eq v6, v0, :cond_0

    const/16 v27, 0x1

    move/from16 v0, v27

    if-le v3, v0, :cond_0

    add-int v27, v6, v3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcAbsListView$PositionScroller;->this$0:Lcom/htc/widget/HtcAbsListView;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget v0, v0, Lcom/htc/widget/HtcAbsListView;->mItemCount:I

    move/from16 v28, v0

    move/from16 v0, v27

    move/from16 v1, v28

    if-ge v0, v1, :cond_0

    .line 4686
    add-int/lit8 v18, v6, 0x1

    .line 4688
    .local v18, nextPos:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAbsListView$PositionScroller;->mLastSeenPos:I

    move/from16 v27, v0

    move/from16 v0, v18

    move/from16 v1, v27

    if-ne v0, v1, :cond_4

    .line 4690
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcAbsListView$PositionScroller;->this$0:Lcom/htc/widget/HtcAbsListView;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAbsListView;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0

    .line 4694
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcAbsListView$PositionScroller;->this$0:Lcom/htc/widget/HtcAbsListView;

    move-object/from16 v27, v0

    const/16 v28, 0x1

    invoke-virtual/range {v27 .. v28}, Lcom/htc/widget/HtcAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v19

    .line 4695
    .local v19, nextView:Landroid/view/View;
    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->getHeight()I

    move-result v20

    .line 4696
    .local v20, nextViewHeight:I
    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->getTop()I

    move-result v22

    .line 4697
    .local v22, nextViewTop:I
    move-object/from16 v0, p0

    iget v5, v0, Lcom/htc/widget/HtcAbsListView$PositionScroller;->mExtraScroll:I

    .line 4698
    .restart local v5       #extraScroll:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAbsListView$PositionScroller;->mBoundPos:I

    move/from16 v27, v0

    move/from16 v0, v18

    move/from16 v1, v27

    if-ge v0, v1, :cond_5

    .line 4699
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcAbsListView$PositionScroller;->this$0:Lcom/htc/widget/HtcAbsListView;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    add-int v29, v20, v22

    sub-int v29, v29, v5

    invoke-static/range {v28 .. v29}, Ljava/lang/Math;->max(II)I

    move-result v28

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAbsListView$PositionScroller;->mScrollDuration:I

    move/from16 v29, v0

    invoke-virtual/range {v27 .. v29}, Lcom/htc/widget/HtcAbsListView;->smoothScrollBy(II)V

    .line 4702
    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/widget/HtcAbsListView$PositionScroller;->mLastSeenPos:I

    .line 4704
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcAbsListView$PositionScroller;->this$0:Lcom/htc/widget/HtcAbsListView;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAbsListView;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0

    .line 4706
    :cond_5
    move/from16 v0, v22

    if-le v0, v5, :cond_0

    .line 4707
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcAbsListView$PositionScroller;->this$0:Lcom/htc/widget/HtcAbsListView;

    move-object/from16 v27, v0

    sub-int v28, v22, v5

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAbsListView$PositionScroller;->mScrollDuration:I

    move/from16 v29, v0

    invoke-virtual/range {v27 .. v29}, Lcom/htc/widget/HtcAbsListView;->smoothScrollBy(II)V

    goto/16 :goto_0

    .line 4714
    .end local v3           #childCount:I
    .end local v5           #extraScroll:I
    .end local v18           #nextPos:I
    .end local v19           #nextView:Landroid/view/View;
    .end local v20           #nextViewHeight:I
    .end local v21           #nextViewIndex:I
    .end local v22           #nextViewTop:I
    :pswitch_2
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAbsListView$PositionScroller;->mLastSeenPos:I

    move/from16 v27, v0

    move/from16 v0, v27

    if-ne v6, v0, :cond_6

    .line 4716
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcAbsListView$PositionScroller;->this$0:Lcom/htc/widget/HtcAbsListView;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAbsListView;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0

    .line 4720
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcAbsListView$PositionScroller;->this$0:Lcom/htc/widget/HtcAbsListView;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    invoke-virtual/range {v27 .. v28}, Lcom/htc/widget/HtcAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 4721
    .local v7, firstView:Landroid/view/View;
    if-eqz v7, :cond_0

    .line 4724
    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v8

    .line 4725
    .local v8, firstViewTop:I
    if-lez v6, :cond_7

    move-object/from16 v0, p0

    iget v5, v0, Lcom/htc/widget/HtcAbsListView$PositionScroller;->mExtraScroll:I

    .line 4727
    .restart local v5       #extraScroll:I
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcAbsListView$PositionScroller;->this$0:Lcom/htc/widget/HtcAbsListView;

    move-object/from16 v27, v0

    sub-int v28, v8, v5

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAbsListView$PositionScroller;->mScrollDuration:I

    move/from16 v29, v0

    invoke-virtual/range {v27 .. v29}, Lcom/htc/widget/HtcAbsListView;->smoothScrollBy(II)V

    .line 4729
    move-object/from16 v0, p0

    iput v6, v0, Lcom/htc/widget/HtcAbsListView$PositionScroller;->mLastSeenPos:I

    .line 4731
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAbsListView$PositionScroller;->mTargetPos:I

    move/from16 v27, v0

    move/from16 v0, v27

    if-le v6, v0, :cond_0

    .line 4732
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcAbsListView$PositionScroller;->this$0:Lcom/htc/widget/HtcAbsListView;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAbsListView;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0

    .line 4725
    .end local v5           #extraScroll:I
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcAbsListView$PositionScroller;->this$0:Lcom/htc/widget/HtcAbsListView;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/htc/widget/HtcAbsListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget v5, v0, Landroid/graphics/Rect;->top:I

    goto :goto_2

    .line 4738
    .end local v7           #firstView:Landroid/view/View;
    .end local v8           #firstViewTop:I
    :pswitch_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcAbsListView$PositionScroller;->this$0:Lcom/htc/widget/HtcAbsListView;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/htc/widget/HtcAbsListView;->getChildCount()I

    move-result v27

    add-int/lit8 v13, v27, -0x2

    .line 4739
    .restart local v13       #lastViewIndex:I
    if-ltz v13, :cond_0

    .line 4742
    add-int v9, v6, v13

    .line 4744
    .restart local v9       #lastPos:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAbsListView$PositionScroller;->mLastSeenPos:I

    move/from16 v27, v0

    move/from16 v0, v27

    if-ne v9, v0, :cond_8

    .line 4746
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcAbsListView$PositionScroller;->this$0:Lcom/htc/widget/HtcAbsListView;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAbsListView;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0

    .line 4750
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcAbsListView$PositionScroller;->this$0:Lcom/htc/widget/HtcAbsListView;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    invoke-virtual {v0, v13}, Lcom/htc/widget/HtcAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    .line 4751
    .restart local v10       #lastView:Landroid/view/View;
    invoke-virtual {v10}, Landroid/view/View;->getHeight()I

    move-result v12

    .line 4752
    .restart local v12       #lastViewHeight:I
    invoke-virtual {v10}, Landroid/view/View;->getTop()I

    move-result v15

    .line 4753
    .restart local v15       #lastViewTop:I
    sub-int v14, v16, v15

    .line 4754
    .restart local v14       #lastViewPixelsShowing:I
    move-object/from16 v0, p0

    iput v9, v0, Lcom/htc/widget/HtcAbsListView$PositionScroller;->mLastSeenPos:I

    .line 4755
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAbsListView$PositionScroller;->mBoundPos:I

    move/from16 v27, v0

    move/from16 v0, v27

    if-le v9, v0, :cond_9

    .line 4756
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcAbsListView$PositionScroller;->this$0:Lcom/htc/widget/HtcAbsListView;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAbsListView$PositionScroller;->mExtraScroll:I

    move/from16 v28, v0

    sub-int v28, v14, v28

    move/from16 v0, v28

    neg-int v0, v0

    move/from16 v28, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAbsListView$PositionScroller;->mScrollDuration:I

    move/from16 v29, v0

    invoke-virtual/range {v27 .. v29}, Lcom/htc/widget/HtcAbsListView;->smoothScrollBy(II)V

    .line 4757
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcAbsListView$PositionScroller;->this$0:Lcom/htc/widget/HtcAbsListView;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAbsListView;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0

    .line 4759
    :cond_9
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAbsListView$PositionScroller;->mExtraScroll:I

    move/from16 v27, v0

    sub-int v2, v16, v27

    .line 4760
    .local v2, bottom:I
    add-int v11, v15, v12

    .line 4761
    .local v11, lastViewBottom:I
    if-le v2, v11, :cond_0

    .line 4762
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcAbsListView$PositionScroller;->this$0:Lcom/htc/widget/HtcAbsListView;

    move-object/from16 v27, v0

    sub-int v28, v2, v11

    move/from16 v0, v28

    neg-int v0, v0

    move/from16 v28, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAbsListView$PositionScroller;->mScrollDuration:I

    move/from16 v29, v0

    invoke-virtual/range {v27 .. v29}, Lcom/htc/widget/HtcAbsListView;->smoothScrollBy(II)V

    goto/16 :goto_0

    .line 4769
    .end local v2           #bottom:I
    .end local v9           #lastPos:I
    .end local v10           #lastView:Landroid/view/View;
    .end local v11           #lastViewBottom:I
    .end local v12           #lastViewHeight:I
    .end local v13           #lastViewIndex:I
    .end local v14           #lastViewPixelsShowing:I
    .end local v15           #lastViewTop:I
    :pswitch_4
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAbsListView$PositionScroller;->mLastSeenPos:I

    move/from16 v27, v0

    move/from16 v0, v27

    if-ne v0, v6, :cond_a

    .line 4771
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcAbsListView$PositionScroller;->this$0:Lcom/htc/widget/HtcAbsListView;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAbsListView;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0

    .line 4775
    :cond_a
    move-object/from16 v0, p0

    iput v6, v0, Lcom/htc/widget/HtcAbsListView$PositionScroller;->mLastSeenPos:I

    .line 4777
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcAbsListView$PositionScroller;->this$0:Lcom/htc/widget/HtcAbsListView;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/htc/widget/HtcAbsListView;->getChildCount()I

    move-result v3

    .line 4778
    .restart local v3       #childCount:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAbsListView$PositionScroller;->mTargetPos:I

    move/from16 v23, v0

    .line 4779
    .local v23, position:I
    add-int v27, v6, v3

    add-int/lit8 v9, v27, -0x1

    .line 4781
    .restart local v9       #lastPos:I
    const/16 v26, 0x0

    .line 4782
    .local v26, viewTravelCount:I
    move/from16 v0, v23

    if-ge v0, v6, :cond_c

    .line 4783
    sub-int v27, v6, v23

    add-int/lit8 v26, v27, 0x1

    .line 4789
    :cond_b
    :goto_3
    move/from16 v0, v26

    int-to-float v0, v0

    move/from16 v27, v0

    int-to-float v0, v3

    move/from16 v28, v0

    div-float v24, v27, v28

    .line 4791
    .local v24, screenTravelCount:F
    invoke-static/range {v24 .. v24}, Ljava/lang/Math;->abs(F)F

    move-result v27

    const/high16 v28, 0x3f80

    invoke-static/range {v27 .. v28}, Ljava/lang/Math;->min(FF)F

    move-result v17

    .line 4792
    .local v17, modifier:F
    move/from16 v0, v23

    if-ge v0, v6, :cond_d

    .line 4793
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcAbsListView$PositionScroller;->this$0:Lcom/htc/widget/HtcAbsListView;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcAbsListView$PositionScroller;->this$0:Lcom/htc/widget/HtcAbsListView;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/htc/widget/HtcAbsListView;->getHeight()I

    move-result v28

    move/from16 v0, v28

    neg-int v0, v0

    move/from16 v28, v0

    move/from16 v0, v28

    int-to-float v0, v0

    move/from16 v28, v0

    mul-float v28, v28, v17

    move/from16 v0, v28

    float-to-int v0, v0

    move/from16 v28, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAbsListView$PositionScroller;->mScrollDuration:I

    move/from16 v29, v0

    invoke-virtual/range {v27 .. v29}, Lcom/htc/widget/HtcAbsListView;->smoothScrollBy(II)V

    .line 4794
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcAbsListView$PositionScroller;->this$0:Lcom/htc/widget/HtcAbsListView;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAbsListView;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0

    .line 4784
    .end local v17           #modifier:F
    .end local v24           #screenTravelCount:F
    :cond_c
    move/from16 v0, v23

    if-le v0, v9, :cond_b

    .line 4785
    sub-int v26, v23, v9

    goto :goto_3

    .line 4795
    .restart local v17       #modifier:F
    .restart local v24       #screenTravelCount:F
    :cond_d
    move/from16 v0, v23

    if-le v0, v9, :cond_e

    .line 4796
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcAbsListView$PositionScroller;->this$0:Lcom/htc/widget/HtcAbsListView;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcAbsListView$PositionScroller;->this$0:Lcom/htc/widget/HtcAbsListView;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/htc/widget/HtcAbsListView;->getHeight()I

    move-result v28

    move/from16 v0, v28

    int-to-float v0, v0

    move/from16 v28, v0

    mul-float v28, v28, v17

    move/from16 v0, v28

    float-to-int v0, v0

    move/from16 v28, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAbsListView$PositionScroller;->mScrollDuration:I

    move/from16 v29, v0

    invoke-virtual/range {v27 .. v29}, Lcom/htc/widget/HtcAbsListView;->smoothScrollBy(II)V

    .line 4797
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcAbsListView$PositionScroller;->this$0:Lcom/htc/widget/HtcAbsListView;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAbsListView;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0

    .line 4800
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcAbsListView$PositionScroller;->this$0:Lcom/htc/widget/HtcAbsListView;

    move-object/from16 v27, v0

    sub-int v28, v23, v6

    invoke-virtual/range {v27 .. v28}, Lcom/htc/widget/HtcAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Landroid/view/View;->getTop()I

    move-result v25

    .line 4801
    .local v25, targetTop:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAbsListView$PositionScroller;->mOffsetFromTop:I

    move/from16 v27, v0

    sub-int v4, v25, v27

    .line 4802
    .local v4, distance:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcAbsListView$PositionScroller;->this$0:Lcom/htc/widget/HtcAbsListView;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAbsListView$PositionScroller;->mScrollDuration:I

    move/from16 v28, v0

    move/from16 v0, v28

    int-to-float v0, v0

    move/from16 v28, v0

    int-to-float v0, v4

    move/from16 v29, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcAbsListView$PositionScroller;->this$0:Lcom/htc/widget/HtcAbsListView;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Lcom/htc/widget/HtcAbsListView;->getHeight()I

    move-result v30

    move/from16 v0, v30

    int-to-float v0, v0

    move/from16 v30, v0

    div-float v29, v29, v30

    mul-float v28, v28, v29

    move/from16 v0, v28

    float-to-int v0, v0

    move/from16 v28, v0

    move-object/from16 v0, v27

    move/from16 v1, v28

    invoke-virtual {v0, v4, v1}, Lcom/htc/widget/HtcAbsListView;->smoothScrollBy(II)V

    goto/16 :goto_0

    .line 4647
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method start(I)V
    .locals 6
    .parameter "position"

    .prologue
    const/16 v5, 0x190

    const/4 v4, -0x1

    .line 4503
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView$PositionScroller;->stop()V

    .line 4505
    iget-object v3, p0, Lcom/htc/widget/HtcAbsListView$PositionScroller;->this$0:Lcom/htc/widget/HtcAbsListView;

    iget v0, v3, Lcom/htc/widget/HtcAbsListView;->mFirstPosition:I

    .line 4506
    .local v0, firstPos:I
    iget-object v3, p0, Lcom/htc/widget/HtcAbsListView$PositionScroller;->this$0:Lcom/htc/widget/HtcAbsListView;

    invoke-virtual {v3}, Lcom/htc/widget/HtcAbsListView;->getChildCount()I

    move-result v3

    add-int/2addr v3, v0

    add-int/lit8 v1, v3, -0x1

    .line 4509
    .local v1, lastPos:I
    if-gt p1, v0, :cond_1

    .line 4510
    sub-int v3, v0, p1

    add-int/lit8 v2, v3, 0x1

    .line 4511
    .local v2, viewTravelCount:I
    const/4 v3, 0x2

    iput v3, p0, Lcom/htc/widget/HtcAbsListView$PositionScroller;->mMode:I

    .line 4520
    :goto_0
    if-lez v2, :cond_2

    .line 4521
    div-int v3, v5, v2

    iput v3, p0, Lcom/htc/widget/HtcAbsListView$PositionScroller;->mScrollDuration:I

    .line 4525
    :goto_1
    iput p1, p0, Lcom/htc/widget/HtcAbsListView$PositionScroller;->mTargetPos:I

    .line 4526
    iput v4, p0, Lcom/htc/widget/HtcAbsListView$PositionScroller;->mBoundPos:I

    .line 4527
    iput v4, p0, Lcom/htc/widget/HtcAbsListView$PositionScroller;->mLastSeenPos:I

    .line 4529
    iget-object v3, p0, Lcom/htc/widget/HtcAbsListView$PositionScroller;->this$0:Lcom/htc/widget/HtcAbsListView;

    invoke-virtual {v3, p0}, Lcom/htc/widget/HtcAbsListView;->post(Ljava/lang/Runnable;)Z

    .line 4530
    .end local v2           #viewTravelCount:I
    :cond_0
    return-void

    .line 4512
    :cond_1
    if-lt p1, v1, :cond_0

    .line 4513
    sub-int v3, p1, v1

    add-int/lit8 v2, v3, 0x1

    .line 4514
    .restart local v2       #viewTravelCount:I
    const/4 v3, 0x1

    iput v3, p0, Lcom/htc/widget/HtcAbsListView$PositionScroller;->mMode:I

    goto :goto_0

    .line 4523
    :cond_2
    iput v5, p0, Lcom/htc/widget/HtcAbsListView$PositionScroller;->mScrollDuration:I

    goto :goto_1
.end method

.method start(II)V
    .locals 11
    .parameter "position"
    .parameter "boundPosition"

    .prologue
    const/16 v10, 0x190

    const/4 v9, -0x1

    const/4 v8, 0x1

    .line 4533
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView$PositionScroller;->stop()V

    .line 4535
    if-ne p2, v9, :cond_1

    .line 4536
    invoke-virtual {p0, p1}, Lcom/htc/widget/HtcAbsListView$PositionScroller;->start(I)V

    .line 4591
    :cond_0
    :goto_0
    return-void

    .line 4540
    :cond_1
    iget-object v7, p0, Lcom/htc/widget/HtcAbsListView$PositionScroller;->this$0:Lcom/htc/widget/HtcAbsListView;

    iget v3, v7, Lcom/htc/widget/HtcAbsListView;->mFirstPosition:I

    .line 4541
    .local v3, firstPos:I
    iget-object v7, p0, Lcom/htc/widget/HtcAbsListView$PositionScroller;->this$0:Lcom/htc/widget/HtcAbsListView;

    invoke-virtual {v7}, Lcom/htc/widget/HtcAbsListView;->getChildCount()I

    move-result v7

    add-int/2addr v7, v3

    add-int/lit8 v4, v7, -0x1

    .line 4544
    .local v4, lastPos:I
    if-gt p1, v3, :cond_3

    .line 4545
    sub-int v1, v4, p2

    .line 4546
    .local v1, boundPosFromLast:I
    if-lt v1, v8, :cond_0

    .line 4551
    sub-int v7, v3, p1

    add-int/lit8 v5, v7, 0x1

    .line 4552
    .local v5, posTravel:I
    add-int/lit8 v2, v1, -0x1

    .line 4553
    .local v2, boundTravel:I
    if-ge v2, v5, :cond_2

    .line 4554
    move v6, v2

    .line 4555
    .local v6, viewTravelCount:I
    const/4 v7, 0x4

    iput v7, p0, Lcom/htc/widget/HtcAbsListView$PositionScroller;->mMode:I

    .line 4581
    .end local v1           #boundPosFromLast:I
    :goto_1
    if-lez v6, :cond_5

    .line 4582
    div-int v7, v10, v6

    iput v7, p0, Lcom/htc/widget/HtcAbsListView$PositionScroller;->mScrollDuration:I

    .line 4586
    :goto_2
    iput p1, p0, Lcom/htc/widget/HtcAbsListView$PositionScroller;->mTargetPos:I

    .line 4587
    iput p2, p0, Lcom/htc/widget/HtcAbsListView$PositionScroller;->mBoundPos:I

    .line 4588
    iput v9, p0, Lcom/htc/widget/HtcAbsListView$PositionScroller;->mLastSeenPos:I

    .line 4590
    iget-object v7, p0, Lcom/htc/widget/HtcAbsListView$PositionScroller;->this$0:Lcom/htc/widget/HtcAbsListView;

    invoke-virtual {v7, p0}, Lcom/htc/widget/HtcAbsListView;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 4557
    .end local v6           #viewTravelCount:I
    .restart local v1       #boundPosFromLast:I
    :cond_2
    move v6, v5

    .line 4558
    .restart local v6       #viewTravelCount:I
    const/4 v7, 0x2

    iput v7, p0, Lcom/htc/widget/HtcAbsListView$PositionScroller;->mMode:I

    goto :goto_1

    .line 4560
    .end local v1           #boundPosFromLast:I
    .end local v2           #boundTravel:I
    .end local v5           #posTravel:I
    .end local v6           #viewTravelCount:I
    :cond_3
    if-lt p1, v4, :cond_0

    .line 4561
    sub-int v0, p2, v3

    .line 4562
    .local v0, boundPosFromFirst:I
    if-lt v0, v8, :cond_0

    .line 4567
    sub-int v7, p1, v4

    add-int/lit8 v5, v7, 0x1

    .line 4568
    .restart local v5       #posTravel:I
    add-int/lit8 v2, v0, -0x1

    .line 4569
    .restart local v2       #boundTravel:I
    if-ge v2, v5, :cond_4

    .line 4570
    move v6, v2

    .line 4571
    .restart local v6       #viewTravelCount:I
    const/4 v7, 0x3

    iput v7, p0, Lcom/htc/widget/HtcAbsListView$PositionScroller;->mMode:I

    goto :goto_1

    .line 4573
    .end local v6           #viewTravelCount:I
    :cond_4
    move v6, v5

    .line 4574
    .restart local v6       #viewTravelCount:I
    iput v8, p0, Lcom/htc/widget/HtcAbsListView$PositionScroller;->mMode:I

    goto :goto_1

    .line 4584
    .end local v0           #boundPosFromFirst:I
    :cond_5
    iput v10, p0, Lcom/htc/widget/HtcAbsListView$PositionScroller;->mScrollDuration:I

    goto :goto_2
.end method

.method startWithOffset(II)V
    .locals 1
    .parameter "position"
    .parameter "offset"

    .prologue
    .line 4594
    const/16 v0, 0x190

    invoke-virtual {p0, p1, p2, v0}, Lcom/htc/widget/HtcAbsListView$PositionScroller;->startWithOffset(III)V

    .line 4595
    return-void
.end method

.method startWithOffset(III)V
    .locals 9
    .parameter "position"
    .parameter "offset"
    .parameter "duration"

    .prologue
    const/4 v8, -0x1

    .line 4598
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView$PositionScroller;->stop()V

    .line 4600
    iput p1, p0, Lcom/htc/widget/HtcAbsListView$PositionScroller;->mTargetPos:I

    .line 4601
    iput p2, p0, Lcom/htc/widget/HtcAbsListView$PositionScroller;->mOffsetFromTop:I

    .line 4602
    iput v8, p0, Lcom/htc/widget/HtcAbsListView$PositionScroller;->mBoundPos:I

    .line 4603
    iput v8, p0, Lcom/htc/widget/HtcAbsListView$PositionScroller;->mLastSeenPos:I

    .line 4604
    const/4 v6, 0x5

    iput v6, p0, Lcom/htc/widget/HtcAbsListView$PositionScroller;->mMode:I

    .line 4606
    iget-object v6, p0, Lcom/htc/widget/HtcAbsListView$PositionScroller;->this$0:Lcom/htc/widget/HtcAbsListView;

    iget v1, v6, Lcom/htc/widget/HtcAbsListView;->mFirstPosition:I

    .line 4607
    .local v1, firstPos:I
    iget-object v6, p0, Lcom/htc/widget/HtcAbsListView$PositionScroller;->this$0:Lcom/htc/widget/HtcAbsListView;

    invoke-virtual {v6}, Lcom/htc/widget/HtcAbsListView;->getChildCount()I

    move-result v0

    .line 4608
    .local v0, childCount:I
    add-int v6, v1, v0

    add-int/lit8 v2, v6, -0x1

    .line 4611
    .local v2, lastPos:I
    if-ge p1, v1, :cond_0

    .line 4612
    sub-int v5, v1, p1

    .line 4623
    .local v5, viewTravelCount:I
    :goto_0
    int-to-float v6, v5

    int-to-float v7, v0

    div-float v3, v6, v7

    .line 4624
    .local v3, screenTravelCount:F
    const/high16 v6, 0x3f80

    cmpg-float v6, v3, v6

    if-gez v6, :cond_2

    int-to-float v6, p3

    mul-float/2addr v6, v3

    float-to-int v6, v6

    :goto_1
    iput v6, p0, Lcom/htc/widget/HtcAbsListView$PositionScroller;->mScrollDuration:I

    .line 4626
    iput v8, p0, Lcom/htc/widget/HtcAbsListView$PositionScroller;->mLastSeenPos:I

    .line 4628
    iget-object v6, p0, Lcom/htc/widget/HtcAbsListView$PositionScroller;->this$0:Lcom/htc/widget/HtcAbsListView;

    invoke-virtual {v6, p0}, Lcom/htc/widget/HtcAbsListView;->post(Ljava/lang/Runnable;)Z

    .line 4629
    .end local v3           #screenTravelCount:F
    .end local v5           #viewTravelCount:I
    :goto_2
    return-void

    .line 4613
    :cond_0
    if-le p1, v2, :cond_1

    .line 4614
    sub-int v5, p1, v2

    .restart local v5       #viewTravelCount:I
    goto :goto_0

    .line 4617
    .end local v5           #viewTravelCount:I
    :cond_1
    iget-object v6, p0, Lcom/htc/widget/HtcAbsListView$PositionScroller;->this$0:Lcom/htc/widget/HtcAbsListView;

    sub-int v7, p1, v1

    invoke-virtual {v6, v7}, Lcom/htc/widget/HtcAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result v4

    .line 4618
    .local v4, targetTop:I
    iget-object v6, p0, Lcom/htc/widget/HtcAbsListView$PositionScroller;->this$0:Lcom/htc/widget/HtcAbsListView;

    sub-int v7, v4, p2

    invoke-virtual {v6, v7, p3}, Lcom/htc/widget/HtcAbsListView;->smoothScrollBy(II)V

    goto :goto_2

    .line 4624
    .end local v4           #targetTop:I
    .restart local v3       #screenTravelCount:F
    .restart local v5       #viewTravelCount:I
    :cond_2
    int-to-float v6, p3

    div-float/2addr v6, v3

    float-to-int v6, v6

    goto :goto_1
.end method

.method stop()V
    .locals 1

    .prologue
    .line 4632
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView$PositionScroller;->this$0:Lcom/htc/widget/HtcAbsListView;

    invoke-virtual {v0, p0}, Lcom/htc/widget/HtcAbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 4633
    return-void
.end method
