.class public Lcom/telerik/widget/feedback/SendFeedbackActivity;
.super Landroid/support/v7/app/ActionBarActivity;
.source "SendFeedbackActivity.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;
.implements Lcom/telerik/widget/feedback/CommentEditText$OnKeyPreImeListener;


# instance fields
.field activeIndicator:Lcom/telerik/widget/feedback/FeedbackIndicator;

.field private btnDone:Landroid/widget/Button;

.field private editCommentPanel:Landroid/widget/LinearLayout;

.field private feedback:Lcom/telerik/widget/feedback/RadFeedback;

.field private historicalX:F

.field private historicalY:F

.field private indicatorContainer:Landroid/widget/RelativeLayout;

.field private lastOrientation:I

.field private progressBar:Landroid/widget/FrameLayout;

.field private screenShotImage:Landroid/widget/ImageView;

.field private sourceImage:Landroid/graphics/Bitmap;

.field private touchDown:Z

.field private txtEditComment:Lcom/telerik/widget/feedback/CommentEditText;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0}, Landroid/support/v7/app/ActionBarActivity;-><init>()V

    .line 52
    return-void
.end method

.method static synthetic access$000(Lcom/telerik/widget/feedback/SendFeedbackActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/telerik/widget/feedback/SendFeedbackActivity;

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/telerik/widget/feedback/SendFeedbackActivity;->confirmActiveIndicator()V

    return-void
.end method

.method static synthetic access$100(Lcom/telerik/widget/feedback/SendFeedbackActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/telerik/widget/feedback/SendFeedbackActivity;

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/telerik/widget/feedback/SendFeedbackActivity;->sendFeedback()V

    return-void
.end method

.method static synthetic access$200(Lcom/telerik/widget/feedback/SendFeedbackActivity;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/telerik/widget/feedback/SendFeedbackActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lcom/telerik/widget/feedback/SendFeedbackActivity;->toggleProgressBar(Z)V

    return-void
.end method

.method private confirmActiveIndicator()V
    .locals 4

    .prologue
    .line 235
    iget-object v2, p0, Lcom/telerik/widget/feedback/SendFeedbackActivity;->txtEditComment:Lcom/telerik/widget/feedback/CommentEditText;

    invoke-virtual {v2}, Lcom/telerik/widget/feedback/CommentEditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 236
    .local v0, "commentText":Ljava/lang/String;
    iget-object v2, p0, Lcom/telerik/widget/feedback/SendFeedbackActivity;->activeIndicator:Lcom/telerik/widget/feedback/FeedbackIndicator;

    invoke-virtual {v2, v0}, Lcom/telerik/widget/feedback/FeedbackIndicator;->setFeedback(Ljava/lang/String;)V

    .line 238
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 239
    iget-object v2, p0, Lcom/telerik/widget/feedback/SendFeedbackActivity;->indicatorContainer:Landroid/widget/RelativeLayout;

    iget-object v3, p0, Lcom/telerik/widget/feedback/SendFeedbackActivity;->activeIndicator:Lcom/telerik/widget/feedback/FeedbackIndicator;

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    .line 242
    :cond_0
    iget-object v2, p0, Lcom/telerik/widget/feedback/SendFeedbackActivity;->editCommentPanel:Landroid/widget/LinearLayout;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 244
    const-string v2, "input_method"

    invoke-virtual {p0, v2}, Lcom/telerik/widget/feedback/SendFeedbackActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    .line 245
    .local v1, "imm":Landroid/view/inputmethod/InputMethodManager;
    iget-object v2, p0, Lcom/telerik/widget/feedback/SendFeedbackActivity;->txtEditComment:Lcom/telerik/widget/feedback/CommentEditText;

    invoke-virtual {v2}, Lcom/telerik/widget/feedback/CommentEditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 246
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/telerik/widget/feedback/SendFeedbackActivity;->activeIndicator:Lcom/telerik/widget/feedback/FeedbackIndicator;

    .line 247
    return-void
.end method

.method private getFeedbackImageFromIndicator(Lcom/telerik/widget/feedback/FeedbackIndicator;)Landroid/graphics/Bitmap;
    .locals 23
    .param p1, "indicator"    # Lcom/telerik/widget/feedback/FeedbackIndicator;

    .prologue
    .line 316
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/telerik/widget/feedback/SendFeedbackActivity;->sourceImage:Landroid/graphics/Bitmap;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/telerik/widget/feedback/SendFeedbackActivity;->sourceImage:Landroid/graphics/Bitmap;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/telerik/widget/feedback/SendFeedbackActivity;->sourceImage:Landroid/graphics/Bitmap;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v21

    invoke-static/range {v19 .. v21}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v14

    .line 317
    .local v14, "resultingImage":Landroid/graphics/Bitmap;
    new-instance v5, Landroid/graphics/Canvas;

    invoke-direct {v5, v14}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 318
    .local v5, "drawingBoard":Landroid/graphics/Canvas;
    invoke-virtual/range {p1 .. p1}, Lcom/telerik/widget/feedback/FeedbackIndicator;->getWidth()I

    move-result v19

    invoke-virtual/range {p1 .. p1}, Lcom/telerik/widget/feedback/FeedbackIndicator;->getHeight()I

    move-result v20

    sget-object v21, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static/range {v19 .. v21}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v9

    .line 319
    .local v9, "indicatorImage":Landroid/graphics/Bitmap;
    new-instance v8, Landroid/graphics/Canvas;

    invoke-direct {v8, v9}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 320
    .local v8, "indicatorBoard":Landroid/graphics/Canvas;
    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Lcom/telerik/widget/feedback/FeedbackIndicator;->draw(Landroid/graphics/Canvas;)V

    .line 321
    invoke-virtual/range {p1 .. p1}, Lcom/telerik/widget/feedback/FeedbackIndicator;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v13

    check-cast v13, Landroid/widget/RelativeLayout$LayoutParams;

    .line 322
    .local v13, "params":Landroid/widget/RelativeLayout$LayoutParams;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/telerik/widget/feedback/SendFeedbackActivity;->screenShotImage:Landroid/widget/ImageView;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/widget/ImageView;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object v4

    .line 323
    .local v4, "displayMatrix":Landroid/graphics/Matrix;
    const/16 v19, 0x9

    move/from16 v0, v19

    new-array v6, v0, [F

    .line 324
    .local v6, "f":[F
    invoke-virtual {v4, v6}, Landroid/graphics/Matrix;->getValues([F)V

    .line 326
    const/16 v19, 0x0

    aget v15, v6, v19

    .line 327
    .local v15, "scaleX":F
    const/16 v19, 0x4

    aget v16, v6, v19

    .line 329
    .local v16, "scaleY":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/telerik/widget/feedback/SendFeedbackActivity;->screenShotImage:Landroid/widget/ImageView;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/widget/ImageView;->getWidth()I

    move-result v19

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    invoke-virtual {v14}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v20

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    mul-float v20, v20, v15

    sub-float v7, v19, v20

    .line 330
    .local v7, "horizontalDiff":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/telerik/widget/feedback/SendFeedbackActivity;->screenShotImage:Landroid/widget/ImageView;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/widget/ImageView;->getHeight()I

    move-result v19

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    invoke-virtual {v14}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v20

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    mul-float v20, v20, v16

    sub-float v18, v19, v20

    .line 332
    .local v18, "verticalDiff":F
    iget v0, v13, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    const/high16 v20, 0x40000000    # 2.0f

    div-float v20, v7, v20

    sub-float v19, v19, v20

    invoke-virtual {v14}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v20

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    mul-float v20, v20, v15

    div-float v11, v19, v20

    .line 333
    .local v11, "originalLeftMargin":F
    iget v0, v13, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    const/high16 v20, 0x40000000    # 2.0f

    div-float v20, v18, v20

    sub-float v19, v19, v20

    invoke-virtual {v14}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v20

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    mul-float v20, v20, v16

    div-float v12, v19, v20

    .line 335
    .local v12, "originalTopMargin":F
    invoke-virtual {v14}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v19

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    mul-float v19, v19, v11

    move/from16 v0, v19

    float-to-int v0, v0

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-float v10, v0

    .line 336
    .local v10, "leftMargin":F
    invoke-virtual {v14}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v19

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    mul-float v19, v19, v12

    move/from16 v0, v19

    float-to-int v0, v0

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v17, v0

    .line 338
    .local v17, "topMargin":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/telerik/widget/feedback/SendFeedbackActivity;->sourceImage:Landroid/graphics/Bitmap;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, v21

    move-object/from16 v3, v22

    invoke-virtual {v5, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 339
    const/16 v19, 0x0

    move/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v5, v9, v10, v0, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 340
    return-object v14
.end method

.method private lockScreenOrientation()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/16 v3, 0x8

    const/4 v2, 0x1

    .line 205
    invoke-virtual {p0}, Lcom/telerik/widget/feedback/SendFeedbackActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    packed-switch v1, :pswitch_data_0

    .line 232
    :goto_0
    return-void

    .line 207
    :pswitch_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v1, v3, :cond_0

    .line 208
    invoke-virtual {p0, v2}, Lcom/telerik/widget/feedback/SendFeedbackActivity;->setRequestedOrientation(I)V

    goto :goto_0

    .line 210
    :cond_0
    invoke-virtual {p0}, Lcom/telerik/widget/feedback/SendFeedbackActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display;->getRotation()I

    move-result v0

    .line 211
    .local v0, "rotation":I
    if-eq v0, v2, :cond_1

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 212
    :cond_1
    const/16 v1, 0x9

    invoke-virtual {p0, v1}, Lcom/telerik/widget/feedback/SendFeedbackActivity;->setRequestedOrientation(I)V

    goto :goto_0

    .line 214
    :cond_2
    invoke-virtual {p0, v2}, Lcom/telerik/widget/feedback/SendFeedbackActivity;->setRequestedOrientation(I)V

    goto :goto_0

    .line 220
    .end local v0    # "rotation":I
    :pswitch_1
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v1, v3, :cond_3

    .line 221
    invoke-virtual {p0, v4}, Lcom/telerik/widget/feedback/SendFeedbackActivity;->setRequestedOrientation(I)V

    goto :goto_0

    .line 223
    :cond_3
    invoke-virtual {p0}, Lcom/telerik/widget/feedback/SendFeedbackActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display;->getRotation()I

    move-result v0

    .line 224
    .restart local v0    # "rotation":I
    if-eqz v0, :cond_4

    if-ne v0, v2, :cond_5

    .line 225
    :cond_4
    invoke-virtual {p0, v4}, Lcom/telerik/widget/feedback/SendFeedbackActivity;->setRequestedOrientation(I)V

    goto :goto_0

    .line 227
    :cond_5
    invoke-virtual {p0, v3}, Lcom/telerik/widget/feedback/SendFeedbackActivity;->setRequestedOrientation(I)V

    goto :goto_0

    .line 205
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private positionIndicatorAt(Landroid/view/MotionEvent$PointerCoords;)V
    .locals 5
    .param p1, "coords"    # Landroid/view/MotionEvent$PointerCoords;

    .prologue
    .line 193
    new-instance v0, Lcom/telerik/widget/feedback/FeedbackIndicator;

    invoke-direct {v0, p0}, Lcom/telerik/widget/feedback/FeedbackIndicator;-><init>(Landroid/content/Context;)V

    .line 194
    .local v0, "indicator":Lcom/telerik/widget/feedback/FeedbackIndicator;
    iget-object v2, p0, Lcom/telerik/widget/feedback/SendFeedbackActivity;->indicatorContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 196
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {p0}, Lcom/telerik/widget/feedback/SendFeedbackActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/telerik/widget/feedback/R$dimen;->feedback_indicator_size:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p0}, Lcom/telerik/widget/feedback/SendFeedbackActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/telerik/widget/feedback/R$dimen;->feedback_indicator_size:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    invoke-direct {v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 199
    .local v1, "params":Landroid/widget/RelativeLayout$LayoutParams;
    iget v2, p1, Landroid/view/MotionEvent$PointerCoords;->y:F

    float-to-int v2, v2

    iget v3, v1, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    iput v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 200
    iget v2, p1, Landroid/view/MotionEvent$PointerCoords;->x:F

    float-to-int v2, v2

    iget v3, v1, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    iput v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 201
    invoke-virtual {v0, v1}, Lcom/telerik/widget/feedback/FeedbackIndicator;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 202
    return-void
.end method

.method private sendFeedback()V
    .locals 12

    .prologue
    .line 251
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 252
    .local v6, "itemsToSend":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/telerik/widget/feedback/FeedbackItem;>;"
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    iget-object v9, p0, Lcom/telerik/widget/feedback/SendFeedbackActivity;->indicatorContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {v9}, Landroid/widget/RelativeLayout;->getChildCount()I

    move-result v9

    if-ge v4, v9, :cond_0

    .line 253
    iget-object v9, p0, Lcom/telerik/widget/feedback/SendFeedbackActivity;->indicatorContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {v9, v4}, Landroid/widget/RelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/telerik/widget/feedback/FeedbackIndicator;

    .line 254
    .local v2, "currentIndicator":Lcom/telerik/widget/feedback/FeedbackIndicator;
    new-instance v5, Lcom/telerik/widget/feedback/FeedbackItem;

    invoke-direct {v5}, Lcom/telerik/widget/feedback/FeedbackItem;-><init>()V

    .line 255
    .local v5, "item":Lcom/telerik/widget/feedback/FeedbackItem;
    invoke-direct {p0, v2}, Lcom/telerik/widget/feedback/SendFeedbackActivity;->getFeedbackImageFromIndicator(Lcom/telerik/widget/feedback/FeedbackIndicator;)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 256
    .local v8, "resultingImage":Landroid/graphics/Bitmap;
    new-instance v7, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v7}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 257
    .local v7, "outputStream":Ljava/io/ByteArrayOutputStream;
    sget-object v9, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v10, 0x64

    invoke-virtual {v8, v9, v10, v7}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 258
    invoke-virtual {v7}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v9

    const/4 v10, 0x2

    invoke-static {v9, v10}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    .line 259
    .local v0, "base64":Ljava/lang/String;
    const-string v1, "image/png"

    .line 260
    .local v1, "contentType":Ljava/lang/String;
    new-instance v3, Lcom/telerik/widget/feedback/Image;

    invoke-direct {v3}, Lcom/telerik/widget/feedback/Image;-><init>()V

    .line 261
    .local v3, "feedbackImage":Lcom/telerik/widget/feedback/Image;
    invoke-virtual {v3, v1}, Lcom/telerik/widget/feedback/Image;->setContentType(Ljava/lang/String;)V

    .line 262
    invoke-virtual {v3, v0}, Lcom/telerik/widget/feedback/Image;->setbase64(Ljava/lang/String;)V

    .line 263
    invoke-virtual {v5, v3}, Lcom/telerik/widget/feedback/FeedbackItem;->setImage(Lcom/telerik/widget/feedback/Image;)V

    .line 264
    invoke-virtual {v2}, Lcom/telerik/widget/feedback/FeedbackIndicator;->getFeedback()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Lcom/telerik/widget/feedback/FeedbackItem;->setText(Ljava/lang/String;)V

    .line 265
    iget-object v9, p0, Lcom/telerik/widget/feedback/SendFeedbackActivity;->feedback:Lcom/telerik/widget/feedback/RadFeedback;

    invoke-virtual {v9}, Lcom/telerik/widget/feedback/RadFeedback;->getCurrentAuthorName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Lcom/telerik/widget/feedback/FeedbackItem;->setAuthor(Ljava/lang/String;)V

    .line 266
    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 252
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 269
    .end local v0    # "base64":Ljava/lang/String;
    .end local v1    # "contentType":Ljava/lang/String;
    .end local v2    # "currentIndicator":Lcom/telerik/widget/feedback/FeedbackIndicator;
    .end local v3    # "feedbackImage":Lcom/telerik/widget/feedback/Image;
    .end local v5    # "item":Lcom/telerik/widget/feedback/FeedbackItem;
    .end local v7    # "outputStream":Ljava/io/ByteArrayOutputStream;
    .end local v8    # "resultingImage":Landroid/graphics/Bitmap;
    :cond_0
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-nez v9, :cond_1

    .line 270
    sget v9, Lcom/telerik/widget/feedback/R$string;->feedback_no_data_ready:I

    invoke-virtual {p0, v9}, Lcom/telerik/widget/feedback/SendFeedbackActivity;->getString(I)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    invoke-static {p0, v9, v10}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v9

    invoke-virtual {v9}, Landroid/widget/Toast;->show()V

    .line 288
    :goto_1
    return-void

    .line 274
    :cond_1
    const/4 v9, 0x1

    invoke-direct {p0, v9}, Lcom/telerik/widget/feedback/SendFeedbackActivity;->toggleProgressBar(Z)V

    .line 275
    invoke-static {}, Lcom/telerik/widget/feedback/RadFeedback;->instance()Lcom/telerik/widget/feedback/RadFeedback;

    move-result-object v9

    const/4 v10, 0x0

    new-instance v11, Lcom/telerik/widget/feedback/SendFeedbackActivity$4;

    invoke-direct {v11, p0}, Lcom/telerik/widget/feedback/SendFeedbackActivity$4;-><init>(Lcom/telerik/widget/feedback/SendFeedbackActivity;)V

    invoke-virtual {v9, v6, v10, v11}, Lcom/telerik/widget/feedback/RadFeedback;->submitFeedback(Ljava/util/ArrayList;Ljava/lang/String;Lcom/telerik/widget/feedback/RadFeedback$OnSubmitFeedbackFinishedCallback;)I

    goto :goto_1
.end method

.method private toggleProgressBar(Z)V
    .locals 2
    .param p1, "visible"    # Z

    .prologue
    .line 308
    if-eqz p1, :cond_0

    .line 309
    iget-object v0, p0, Lcom/telerik/widget/feedback/SendFeedbackActivity;->progressBar:Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 313
    :goto_0
    return-void

    .line 311
    :cond_0
    iget-object v0, p0, Lcom/telerik/widget/feedback/SendFeedbackActivity;->progressBar:Landroid/widget/FrameLayout;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v2, 0x1

    .line 56
    invoke-super {p0, p1}, Landroid/support/v7/app/ActionBarActivity;->onCreate(Landroid/os/Bundle;)V

    .line 57
    sget v1, Lcom/telerik/widget/feedback/R$layout;->activity_send_feedback:I

    invoke-virtual {p0, v1}, Lcom/telerik/widget/feedback/SendFeedbackActivity;->setContentView(I)V

    .line 58
    invoke-virtual {p0}, Lcom/telerik/widget/feedback/SendFeedbackActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    iput v1, p0, Lcom/telerik/widget/feedback/SendFeedbackActivity;->lastOrientation:I

    .line 59
    if-nez p1, :cond_0

    .line 60
    invoke-direct {p0}, Lcom/telerik/widget/feedback/SendFeedbackActivity;->lockScreenOrientation()V

    .line 62
    :cond_0
    invoke-static {}, Lcom/telerik/widget/feedback/RadFeedback;->instance()Lcom/telerik/widget/feedback/RadFeedback;

    move-result-object v1

    iput-object v1, p0, Lcom/telerik/widget/feedback/SendFeedbackActivity;->feedback:Lcom/telerik/widget/feedback/RadFeedback;

    .line 63
    invoke-virtual {p0}, Lcom/telerik/widget/feedback/SendFeedbackActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/support/v7/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 64
    invoke-virtual {p0}, Lcom/telerik/widget/feedback/SendFeedbackActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/support/v7/app/ActionBar;->setDisplayUseLogoEnabled(Z)V

    .line 65
    invoke-virtual {p0}, Lcom/telerik/widget/feedback/SendFeedbackActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v1

    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v2}, Landroid/graphics/drawable/ColorDrawable;-><init>()V

    invoke-virtual {v1, v2}, Landroid/support/v7/app/ActionBar;->setLogo(Landroid/graphics/drawable/Drawable;)V

    .line 67
    sget v1, Lcom/telerik/widget/feedback/R$id;->indicatorContainer:I

    invoke-virtual {p0, v1}, Lcom/telerik/widget/feedback/SendFeedbackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/telerik/widget/feedback/SendFeedbackActivity;->indicatorContainer:Landroid/widget/RelativeLayout;

    .line 68
    sget v1, Lcom/telerik/widget/feedback/R$id;->txtEditComment:I

    invoke-virtual {p0, v1}, Lcom/telerik/widget/feedback/SendFeedbackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/telerik/widget/feedback/CommentEditText;

    iput-object v1, p0, Lcom/telerik/widget/feedback/SendFeedbackActivity;->txtEditComment:Lcom/telerik/widget/feedback/CommentEditText;

    .line 69
    sget v1, Lcom/telerik/widget/feedback/R$id;->progressBar:I

    invoke-virtual {p0, v1}, Lcom/telerik/widget/feedback/SendFeedbackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    iput-object v1, p0, Lcom/telerik/widget/feedback/SendFeedbackActivity;->progressBar:Landroid/widget/FrameLayout;

    .line 70
    iget-object v1, p0, Lcom/telerik/widget/feedback/SendFeedbackActivity;->txtEditComment:Lcom/telerik/widget/feedback/CommentEditText;

    invoke-virtual {v1, p0}, Lcom/telerik/widget/feedback/CommentEditText;->setOnKeyPreImeListener(Lcom/telerik/widget/feedback/CommentEditText$OnKeyPreImeListener;)V

    .line 71
    iget-object v1, p0, Lcom/telerik/widget/feedback/SendFeedbackActivity;->txtEditComment:Lcom/telerik/widget/feedback/CommentEditText;

    new-instance v2, Lcom/telerik/widget/feedback/SendFeedbackActivity$1;

    invoke-direct {v2, p0}, Lcom/telerik/widget/feedback/SendFeedbackActivity$1;-><init>(Lcom/telerik/widget/feedback/SendFeedbackActivity;)V

    invoke-virtual {v1, v2}, Lcom/telerik/widget/feedback/CommentEditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 81
    sget v1, Lcom/telerik/widget/feedback/R$id;->btnCommentDone:I

    invoke-virtual {p0, v1}, Lcom/telerik/widget/feedback/SendFeedbackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/telerik/widget/feedback/SendFeedbackActivity;->btnDone:Landroid/widget/Button;

    .line 82
    iget-object v1, p0, Lcom/telerik/widget/feedback/SendFeedbackActivity;->btnDone:Landroid/widget/Button;

    new-instance v2, Lcom/telerik/widget/feedback/SendFeedbackActivity$2;

    invoke-direct {v2, p0}, Lcom/telerik/widget/feedback/SendFeedbackActivity$2;-><init>(Lcom/telerik/widget/feedback/SendFeedbackActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 89
    sget v1, Lcom/telerik/widget/feedback/R$id;->editCommentPanel:I

    invoke-virtual {p0, v1}, Lcom/telerik/widget/feedback/SendFeedbackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/telerik/widget/feedback/SendFeedbackActivity;->editCommentPanel:Landroid/widget/LinearLayout;

    .line 90
    sget v1, Lcom/telerik/widget/feedback/R$id;->screenshotImage:I

    invoke-virtual {p0, v1}, Lcom/telerik/widget/feedback/SendFeedbackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/telerik/widget/feedback/SendFeedbackActivity;->screenShotImage:Landroid/widget/ImageView;

    .line 91
    invoke-virtual {p0}, Lcom/telerik/widget/feedback/SendFeedbackActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "image"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v0

    .line 92
    .local v0, "imageBytes":[B
    const/4 v1, 0x0

    array-length v2, v0

    invoke-static {v0, v1, v2}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/telerik/widget/feedback/SendFeedbackActivity;->sourceImage:Landroid/graphics/Bitmap;

    .line 94
    iget-object v1, p0, Lcom/telerik/widget/feedback/SendFeedbackActivity;->screenShotImage:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/telerik/widget/feedback/SendFeedbackActivity;->sourceImage:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 95
    iget-object v1, p0, Lcom/telerik/widget/feedback/SendFeedbackActivity;->screenShotImage:Landroid/widget/ImageView;

    invoke-virtual {v1, p0}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 96
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 120
    invoke-virtual {p0}, Lcom/telerik/widget/feedback/SendFeedbackActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    sget v1, Lcom/telerik/widget/feedback/R$menu;->send_feedback_activity_menu:I

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 121
    invoke-super {p0, p1}, Landroid/support/v7/app/ActionBarActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 150
    invoke-super {p0}, Landroid/support/v7/app/ActionBarActivity;->onDestroy()V

    .line 151
    invoke-static {}, Lcom/telerik/widget/feedback/RadFeedback;->instance()Lcom/telerik/widget/feedback/RadFeedback;

    move-result-object v0

    invoke-virtual {v0}, Lcom/telerik/widget/feedback/RadFeedback;->onSendFeedbackFinished()V

    .line 152
    return-void
.end method

.method public onKeyPreIme(ILandroid/view/KeyEvent;)V
    .locals 2
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 345
    const/4 v0, 0x4

    if-ne p1, v0, :cond_2

    .line 346
    iget-object v0, p0, Lcom/telerik/widget/feedback/SendFeedbackActivity;->editCommentPanel:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    .line 347
    iget-object v0, p0, Lcom/telerik/widget/feedback/SendFeedbackActivity;->editCommentPanel:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 349
    iget-object v0, p0, Lcom/telerik/widget/feedback/SendFeedbackActivity;->activeIndicator:Lcom/telerik/widget/feedback/FeedbackIndicator;

    invoke-virtual {v0}, Lcom/telerik/widget/feedback/FeedbackIndicator;->getFeedback()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/telerik/widget/feedback/SendFeedbackActivity;->activeIndicator:Lcom/telerik/widget/feedback/FeedbackIndicator;

    invoke-virtual {v0}, Lcom/telerik/widget/feedback/FeedbackIndicator;->getFeedback()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 350
    :cond_0
    iget-object v0, p0, Lcom/telerik/widget/feedback/SendFeedbackActivity;->indicatorContainer:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/telerik/widget/feedback/SendFeedbackActivity;->activeIndicator:Lcom/telerik/widget/feedback/FeedbackIndicator;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    .line 352
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/telerik/widget/feedback/SendFeedbackActivity;->activeIndicator:Lcom/telerik/widget/feedback/FeedbackIndicator;

    .line 355
    :cond_2
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v1, 0x1

    .line 126
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 128
    .local v0, "id":I
    const v2, 0x102002c

    if-ne v0, v2, :cond_0

    .line 129
    invoke-virtual {p0}, Lcom/telerik/widget/feedback/SendFeedbackActivity;->finish()V

    .line 145
    :goto_0
    return v1

    .line 131
    :cond_0
    sget v2, Lcom/telerik/widget/feedback/R$id;->action_send:I

    if-ne v0, v2, :cond_2

    .line 132
    iget-object v2, p0, Lcom/telerik/widget/feedback/SendFeedbackActivity;->feedback:Lcom/telerik/widget/feedback/RadFeedback;

    invoke-virtual {v2}, Lcom/telerik/widget/feedback/RadFeedback;->shouldShowPrefPrompt()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 133
    iget-object v2, p0, Lcom/telerik/widget/feedback/SendFeedbackActivity;->feedback:Lcom/telerik/widget/feedback/RadFeedback;

    new-instance v3, Lcom/telerik/widget/feedback/SendFeedbackActivity$3;

    invoke-direct {v3, p0}, Lcom/telerik/widget/feedback/SendFeedbackActivity$3;-><init>(Lcom/telerik/widget/feedback/SendFeedbackActivity;)V

    invoke-virtual {v2, p0, v3}, Lcom/telerik/widget/feedback/RadFeedback;->showAuthorNamePrompt(Landroid/content/Context;Lcom/telerik/widget/feedback/RadFeedback$OnAuthorPromptConfirmedListener;)V

    goto :goto_0

    .line 140
    :cond_1
    invoke-direct {p0}, Lcom/telerik/widget/feedback/SendFeedbackActivity;->sendFeedback()V

    goto :goto_0

    .line 145
    :cond_2
    invoke-super {p0, p1}, Landroid/support/v7/app/ActionBarActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    goto :goto_0
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 106
    invoke-super {p0}, Landroid/support/v7/app/ActionBarActivity;->onPause()V

    .line 107
    invoke-virtual {p0}, Lcom/telerik/widget/feedback/SendFeedbackActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/telerik/widget/feedback/SendFeedbackActivity;->lastOrientation:I

    .line 108
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 112
    invoke-super {p0, p1}, Landroid/support/v7/app/ActionBarActivity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 113
    const-string v0, "orientation"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/telerik/widget/feedback/SendFeedbackActivity;->lastOrientation:I

    .line 114
    invoke-direct {p0}, Lcom/telerik/widget/feedback/SendFeedbackActivity;->lockScreenOrientation()V

    .line 115
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 100
    invoke-super {p0, p1}, Landroid/support/v7/app/ActionBarActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 101
    const-string v0, "orientation"

    iget v1, p0, Lcom/telerik/widget/feedback/SendFeedbackActivity;->lastOrientation:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 102
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 6
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/high16 v5, 0x41200000    # 10.0f

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 156
    iget-object v3, p0, Lcom/telerik/widget/feedback/SendFeedbackActivity;->progressBar:Landroid/widget/FrameLayout;

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v3

    if-nez v3, :cond_1

    .line 189
    :cond_0
    :goto_0
    return v1

    .line 159
    :cond_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v3

    if-le v3, v2, :cond_2

    .line 160
    iput-boolean v1, p0, Lcom/telerik/widget/feedback/SendFeedbackActivity;->touchDown:Z

    goto :goto_0

    .line 164
    :cond_2
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    if-nez v3, :cond_3

    .line 165
    iput-boolean v2, p0, Lcom/telerik/widget/feedback/SendFeedbackActivity;->touchDown:Z

    .line 166
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    iput v1, p0, Lcom/telerik/widget/feedback/SendFeedbackActivity;->historicalX:F

    .line 167
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    iput v1, p0, Lcom/telerik/widget/feedback/SendFeedbackActivity;->historicalY:F

    move v1, v2

    .line 168
    goto :goto_0

    .line 171
    :cond_3
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_5

    .line 172
    iget v3, p0, Lcom/telerik/widget/feedback/SendFeedbackActivity;->historicalX:F

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    sub-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    cmpl-float v3, v3, v5

    if-gtz v3, :cond_4

    iget v3, p0, Lcom/telerik/widget/feedback/SendFeedbackActivity;->historicalY:F

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    sub-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    cmpl-float v3, v3, v5

    if-lez v3, :cond_5

    .line 173
    :cond_4
    iput-boolean v1, p0, Lcom/telerik/widget/feedback/SendFeedbackActivity;->touchDown:Z

    goto :goto_0

    .line 178
    :cond_5
    iget-boolean v3, p0, Lcom/telerik/widget/feedback/SendFeedbackActivity;->touchDown:Z

    if-eqz v3, :cond_0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    if-ne v3, v2, :cond_0

    .line 179
    iget-object v2, p0, Lcom/telerik/widget/feedback/SendFeedbackActivity;->activeIndicator:Lcom/telerik/widget/feedback/FeedbackIndicator;

    if-eqz v2, :cond_6

    .line 180
    invoke-direct {p0}, Lcom/telerik/widget/feedback/SendFeedbackActivity;->confirmActiveIndicator()V

    .line 186
    :goto_1
    iput-boolean v1, p0, Lcom/telerik/widget/feedback/SendFeedbackActivity;->touchDown:Z

    goto :goto_0

    .line 182
    :cond_6
    new-instance v0, Landroid/view/MotionEvent$PointerCoords;

    invoke-direct {v0}, Landroid/view/MotionEvent$PointerCoords;-><init>()V

    .line 183
    .local v0, "coordinates":Landroid/view/MotionEvent$PointerCoords;
    invoke-virtual {p2, v1, v0}, Landroid/view/MotionEvent;->getPointerCoords(ILandroid/view/MotionEvent$PointerCoords;)V

    .line 184
    invoke-direct {p0, v0}, Lcom/telerik/widget/feedback/SendFeedbackActivity;->positionIndicatorAt(Landroid/view/MotionEvent$PointerCoords;)V

    goto :goto_1
.end method

.method startInputForIndicator(Lcom/telerik/widget/feedback/FeedbackIndicator;)V
    .locals 3
    .param p1, "indicator"    # Lcom/telerik/widget/feedback/FeedbackIndicator;

    .prologue
    .line 291
    iget-object v1, p0, Lcom/telerik/widget/feedback/SendFeedbackActivity;->activeIndicator:Lcom/telerik/widget/feedback/FeedbackIndicator;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/telerik/widget/feedback/SendFeedbackActivity;->activeIndicator:Lcom/telerik/widget/feedback/FeedbackIndicator;

    if-eq v1, p1, :cond_1

    .line 292
    iget-object v1, p0, Lcom/telerik/widget/feedback/SendFeedbackActivity;->activeIndicator:Lcom/telerik/widget/feedback/FeedbackIndicator;

    invoke-virtual {v1}, Lcom/telerik/widget/feedback/FeedbackIndicator;->getFeedback()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/telerik/widget/feedback/SendFeedbackActivity;->activeIndicator:Lcom/telerik/widget/feedback/FeedbackIndicator;

    invoke-virtual {v1}, Lcom/telerik/widget/feedback/FeedbackIndicator;->getFeedback()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 293
    :cond_0
    iget-object v1, p0, Lcom/telerik/widget/feedback/SendFeedbackActivity;->indicatorContainer:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/telerik/widget/feedback/SendFeedbackActivity;->activeIndicator:Lcom/telerik/widget/feedback/FeedbackIndicator;

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    .line 297
    :cond_1
    iget-object v1, p0, Lcom/telerik/widget/feedback/SendFeedbackActivity;->activeIndicator:Lcom/telerik/widget/feedback/FeedbackIndicator;

    if-eq v1, p1, :cond_2

    .line 298
    iput-object p1, p0, Lcom/telerik/widget/feedback/SendFeedbackActivity;->activeIndicator:Lcom/telerik/widget/feedback/FeedbackIndicator;

    .line 299
    iget-object v1, p0, Lcom/telerik/widget/feedback/SendFeedbackActivity;->txtEditComment:Lcom/telerik/widget/feedback/CommentEditText;

    invoke-virtual {p1}, Lcom/telerik/widget/feedback/FeedbackIndicator;->getFeedback()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/telerik/widget/feedback/CommentEditText;->setText(Ljava/lang/CharSequence;)V

    .line 300
    iget-object v1, p0, Lcom/telerik/widget/feedback/SendFeedbackActivity;->editCommentPanel:Landroid/widget/LinearLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 301
    iget-object v1, p0, Lcom/telerik/widget/feedback/SendFeedbackActivity;->txtEditComment:Lcom/telerik/widget/feedback/CommentEditText;

    invoke-virtual {v1}, Lcom/telerik/widget/feedback/CommentEditText;->requestFocus()Z

    .line 302
    const-string v1, "input_method"

    invoke-virtual {p0, v1}, Lcom/telerik/widget/feedback/SendFeedbackActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 303
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    iget-object v1, p0, Lcom/telerik/widget/feedback/SendFeedbackActivity;->txtEditComment:Lcom/telerik/widget/feedback/CommentEditText;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 305
    .end local v0    # "imm":Landroid/view/inputmethod/InputMethodManager;
    :cond_2
    return-void
.end method
