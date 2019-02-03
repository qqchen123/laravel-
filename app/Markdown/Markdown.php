<?php
/**
 * Created by PhpStorm.
 * User: a
 * Date: 2019/2/3
 * Time: 8:46 AM
 */

namespace App\Markdown;


class Markdown {
	protected $parser;
	public function __construct(Parser $parser)
	{
		$this->parser = $parser;
	}

	public function markdown($text)
	{
		$html = $this->parser->makeHtml($text);
		return $html;
	}
}