<?php

use yii\helpers\Html;

/* @var $this yii\web\View */
/* @var $model app\models\ImageProduct */

$this->title = 'Update Image Product: ' . $model->id;
$this->params['breadcrumbs'][] = ['label' => 'Image Products', 'url' => ['index']];
$this->params['breadcrumbs'][] = ['label' => $model->id, 'url' => ['view', 'id' => $model->id]];
$this->params['breadcrumbs'][] = 'Update';
?>
<div class="image-product-update">

    <h1><?= Html::encode($this->title) ?></h1>

    <?= $this->render('_form', [
        'model' => $model,
    ]) ?>

</div>
