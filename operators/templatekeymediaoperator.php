<?php

/**
 * @author Kristian Blom
 * @since 2012-01-02
 */
class TemplateKeymediaOperator
{

    /**
     * @return array
     */
    function operatorList()
    {
        return array('keymedia');
    }

    /**
     * @return bool
     */
    function namedParameterPerOperator()
    {
        return true;
    }

    /**
     * @return array
     */
    function namedParameterList()
    {
        return array(
            'keymedia' => array(

                    'attribute' => array(
                        'type' => 'eZContentObjectAttribute',
                        'required' => true
                    ),
                    'format' => array(
                        'type' => 'mixed',
                        'required' => false,
                        'default' => null
                    )

            )
        );
    }


    /**
     * @param $tpl
     * @param $operatorName
     * @param $operatorParameters
     * @param $rootNamespace
     * @param $currentNamespace
     * @param $operatorValue
     * @param $namedParameters
     * @param $placement
     * @return void
     */
    function modify($tpl, $operatorName, $operatorParameters, $rootNamespace, $currentNamespace, &$operatorValue, $namedParameters, $placement)
    {
        $attr = $namedParameters['attribute'];
        $format = $namedParameters['format'];

        switch ($operatorName)
        {
            case 'keymedia':

                $operatorValue = $attr->content()->media($format);
                break;
        }
    }
}

?>